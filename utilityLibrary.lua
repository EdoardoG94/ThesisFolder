local utilityLibrary =  {}

function utilityLibrary.add(a,b)
   print(a+b)
end
--Umberto's Function

function utilityLibrary.createDummy(name,T,relativObjHandle)
   dummy=sim.createDummy(0.05,nil)
   sim.setObjectName(dummy,name)
   sim.setObjectMatrix(dummy,relativObjHandle,T)
   return dummy

end
--Umberto's Function

function TNorm(T)--function getNumberOfClosures()
   return math.sqrt(T[4]*T[4]+T[8]*T[8]+T[12]*T[12])
end

--Umberto's Function

function utilityLibrary.findClosestClosure(objectHandle,RefObjectHandle)--deletedShape
   
   local distance={}
   print('Retrieving boxes')
   local minIdx=0
   local minDistance=999
   local resultPosition=0
      for i=1,#objectHandle,1 do
         local dependentMatrix=sim.getObjectMatrix(objectHandle[i],RefObjectHandle)
         --resultPosition=checkPosition(objectHandle[i])
         --if resultPosition==1 then
            distance=TNorm(dependentMatrix)
            print(objectHandle[i],'objectHandle[i]\n')
            print(distance,'distance')
            --resultPosition=0
            if i==1 then 
               minDistance=distance
               minIdx=i    
            else
               if distance<minDistance then
                  minDistance=distance
                  minIdx=i  
               end       
            end
         --end
      end
   
   print(minDistance,'minDistance')

   if minIdx==0 then
       print('There is not any box that can be manipulated')
       return -1
   else
       return minIdx
   end
end

function utilityLibrary.TableConcat(t1,t2)
   for i=1,#t2 do
       t1[#t1+i] = t2[i]
   end
   return t1
end

function checkPosition(objectHandle,tankHandle,visionCameraHandle)

   local baseHandle=sim.getObjectHandle('UR10_link1_visible')
   local T_W_Tank=sim.getObjectMatrix(tankHandle,-1)
   local T_W_Base=sim.getObjectMatrix(baseHandle,-1)
   local T_Base_VS=sim.getObjectMatrix(visionCameraHandle,baseHandle)
   local T_VS_Clo=sim.getObjectMatrix(objectHandle,visionCameraHandle)
   local T_W_VS=sim.multiplyMatrices(T_W_Base,T_Base_VS)
   local T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

   sim.invertMatrix(T_W_Tank)

   local T_Tank_Clo=sim.multiplyMatrices(T_W_Tank,T_W_Clo)
   local norm_T_Tank_Clo=TNorm(T_Tank_Clo)

   local resultPosition=0
   if norm_T_Tank_Clo<=0.5 then  
      resultPosition=1
   end

   return resultPosition
end

function utilityLibrary.distance(objectHandle,refObjectHandle)

   local dependentMatrix=sim.getObjectMatrix(objectHandle,refObjectHandle)
   local distance=TNorm(dependentMatrix)

   return distance

end

function utilityLibrary.checkDistanceAndSetWeight(distance,threshold,kpP,kpR)

   if distance < threshold then
      sim.setObjectFloatParameter(prismaticJoint,2021,kpP*distance+0.01) --diminuisce da 1 a 0.03
      for i=1,6,1 do
         sim.setObjectFloatParameter(jh[i],2021,1-kpR*distance+0.03) --Aumenta da 0.03 a 1
      end
   else
      sim.setObjectFloatParameter(prismaticJoint,2021,1)
      for i=1,6,1 do
         sim.setObjectFloatParameter(jh[i],2021,0.2)
      end
   end

end

function utilityLibrary.setWeightForChangeOrientation(distance,threshold,kpP,kpR)

   if distance < threshold then
      sim.setObjectFloatParameter(prismaticJoint,2021,kpP) --diminuisce da 1 a 0.03
      for i=1,6,1 do
         sim.setObjectFloatParameter(jh[i],2021,kpR) --Aumenta da 0.03 a 1
      end
   else
      sim.setObjectFloatParameter(prismaticJoint,2021,1)
      for i=1,6,1 do
         sim.setObjectFloatParameter(jh[i],2021,0.5)
      end
   end
      
end

activateSuctionPad=function(active)
   if (active) then
       sim.setScriptSimulationParameter(suctionPadScript,'active','true')
       print('Suction pad activated')
   else
       sim.setScriptSimulationParameter(suctionPadScript,'active','false')
       print('Suction pad deactivated')
   end
end

function utilityLibrary.upperPickPlaceParameter(pick,place,h1,h2)
   
   upperPick={-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1}
   upperPlace={-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1}
    
   upperPick=utilityLibrary.getMatrixShiftedAlongZ(pick,h1)
   upperPlace=utilityLibrary.getMatrixShiftedAlongZ(place,h2)

   return upperPick,upperPlace
end

createParameter=function(matrix,relVel,virtDist,numBiez,biezInt1,biezInt2)
  
   local ptData={-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1}
   local matrixAngle = sim.getEulerAnglesFromMatrix(matrix)
   
      ptData[1]=matrix[4]
      ptData[2]=matrix[8]
      ptData[3]=matrix[12]
      ptData[4]=matrixAngle[1]
      ptData[5]=matrixAngle[2]
      ptData[6]=matrixAngle[3]
      ptData[7]=relVel
      ptData[8]=virtDist
      ptData[9]=numBiez--int
      ptData[10]=biezInt1
      ptData[11]=biezInt2

   return ptData

end

function utilityLibrary.getMatrixShiftedAlongZ(matrix,localZShift)

   local m={}

   for i=1,12,1 do
       m[i]=matrix[i]
   end

   m[4]=m[4]+m[3]*localZShift
   m[8]=m[8]+m[7]*localZShift
   m[12]=m[12]+m[11]*localZShift
   
   return m
end

function utilityLibrary.getMatrixShiftedAlongY(matrix,localYShift)

   local m={}

   for i=1,12,1 do
       m[i]=matrix[i]
   end

   m[4]=m[4]+m[2]*localYShift
   m[8]=m[8]+m[6]*localYShift
   m[12]=m[12]+m[10]*localYShift
   
   return m
end

function utilityLibrary.getMatrixShiftedAlongX(matrix,localXShift)

   local m={}

   for i=1,12,1 do
       m[i]=matrix[i]
   end

   m[4]=m[4]+m[1]*localXShift
   m[8]=m[8]+m[5]*localXShift
   m[12]=m[12]+m[9]*localXShift
   
   return m
end

function utilityLibrary.rotateMatrixAlongX(matrix,angle)

   local resultedMatrix={}
   local rotationMatrixX={1,0,0,0,0,math.cos(angle),-(math.sin(angle)),0,0,math.sin(angle),math.cos(angle),0}
   
   resultedMatrix=sim.multiplyMatrices(matrix,rotationMatrixX)

   return resultedMatrix
end

function utilityLibrary.rotateMatrixAlongY(matrix,angle)

   local resultedMatrix={}
   local rotationMatrixY={math.cos(angle),0,(math.sin(angle)),0,0,1,0,0,-(math.sin(angle)),0,math.cos(angle),0}
   
   resultedMatrix=sim.multiplyMatrices(matrix,rotationMatrixY)

   return resultedMatrix

end

function utilityLibrary.rotateMatrixAlongZ(matrix,angle)

   local resultedMatrix={}
   local rotationMatrixZ={math.cos(angle),-(math.sin(angle)),0,0,(math.sin(angle)),math.cos(angle),0,0,0,0,1,0}
   
   resultedMatrix=sim.multiplyMatrices(matrix,rotationMatrixZ)

   return resultedMatrix

end

function utilityLibrary.changeParameter(goingToPickParameter,goingToPlaceParameter,goingToChangeOrientationParameter)

   sim.setScriptSimulationParameter(sim.handle_self,'goingToPick',goingToPickParameter)
   sim.setScriptSimulationParameter(sim.handle_self,'goingToPlace',goingToPlaceParameter)
   sim.setScriptSimulationParameter(sim.handle_self,'goingToChangeOrientation',goingToChangeOrientationParameter)

end

function utilityLibrary.computePlaceMatrix(handleBuffer,xDimension,yDimension,nColoumns,data,dummyBuffer)--zDimension
   
   local j=1
   local k=0
   local i=0

   local bufferMatrix=sim.getObjectMatrix(handleBuffer,-1)
   local bufferMatrixZShifted=utilityLibrary.getMatrixShiftedAlongX(bufferMatrix,0.025)
   local bufferEdgeYShiftedMatrix=utilityLibrary.getMatrixShiftedAlongY(bufferMatrixZShifted,xDimension/2-0.04)
   local bufferRealEdgeMatrix=utilityLibrary.getMatrixShiftedAlongZ(bufferEdgeYShiftedMatrix,yDimension/2-0.04)--0.04=barriera laterale + metà dello spazio interno per il tappo

   while (j~=data) do--data[1]
      k=k+1
      if k==nColoumns then
         k=0
         i=i+1
      end
      j=j+1
   end

   print(k,i,'k e i')
   local placeShiftMatrixFromEdge=utilityLibrary.getMatrixShiftedAlongZ(bufferRealEdgeMatrix,-k*(0.07+0.005))
   local placeMatrix=utilityLibrary.getMatrixShiftedAlongY(placeShiftMatrixFromEdge,-i*(0.07+0.005))
   local rotatedMatrixAlongY=utilityLibrary.rotateMatrixAlongY(placeMatrix,math.pi/2)
   local rotatedMatrixAlongZ=utilityLibrary.rotateMatrixAlongZ(rotatedMatrixAlongY,math.pi/2)

   sim.setObjectMatrix(dummyBuffer,-1,rotatedMatrixAlongZ)
   
   return rotatedMatrixAlongZ

end

function utilityLibrary.computeDestination(position,orientation,height,dummyHandle)

   destinationMatrix=sim.buildMatrix(position,orientation)
   upperDestinationMatrix=utilityLibrary.getMatrixShiftedAlongZ(destinationMatrix,height)

   return destinationMatrix,upperDestinationMatrix

end

function utilityLibrary.changePickClosurePositionAndOrientation(dummyClosureHandle,dummyHandle)

   local wrongOriented
   local missAllignment=0.02
   local p_Closure_ClosureWithError={0.005,0.005,0}
   T_W_Closure=sim.getObjectMatrix(dummyClosureHandle,-1)
   p_W_ClosureWithError=sim.multiplyVector(T_W_Closure,p_Closure_ClosureWithError)
   --sim.setObjectPosition(dummyHandle,-1,dummyClosureHandle)--sim.setObjectOrientation(dummyHandle,closureHandle,{0,math.pi/2,0})
   closureTrueOrientation=sim.getObjectOrientation(dummyClosureHandle,-1)

   if (closureTrueOrientation[1]>math.pi and closureTrueOrientation[1]<2*math.pi) or (closureTrueOrientation[1]<-math.pi and closureTrueOrientation[1]>-2*math.pi) then  
      wrongOriented=1--Riguardare il closureTrueOrientation
      sim.setObjectOrientation(dummyClosureHandle,dummyClosureHandle,{math.pi,0,0}) 
      print('tappo non orientato correttamente')
   elseif (closureTrueOrientation[2]>math.pi and closureTrueOrientation[2]<2*math.pi) or (closureTrueOrientation[2]<-math.pi and closureTrueOrientation[2]>-2*math.pi) then
      wrongOriented=1
      sim.setObjectOrientation(dummyClosureHandle,dummyClosureHandle,{0,math.pi,0})
      print('tappo non orientato correttamente')
   else
      wrongOriented=0
      print('tappo orientato correttamente')
   end
   closureTrueOrientation=sim.getObjectOrientation(dummyClosureHandle,-1)
   return p_W_ClosureWithError,closureTrueOrientation,wrongOriented

end

function utilityLibrary.bubbleSort(A,handleFrame,handleOfClosure,matricesDummy,startIndex)
   local itemCount=#A
   local hasChanged
   repeat
      hasChanged = false
      itemCount=itemCount - 1
      for j = startIndex, itemCount,1 do
         if A[j][1] > A[j + 1][1] then
            A[j], A[j + 1] = A[j + 1], A[j]
            handleFrame[j],handleFrame[j + 1]=handleFrame[j + 1],handleFrame[j]
            handleOfClosure[j],handleOfClosure[j + 1]=handleOfClosure[j + 1],handleOfClosure[j]
            matricesDummy[j],matricesDummy[j + 1]=matricesDummy[j + 1],matricesDummy[j]
            hasChanged = true
         end
      end
   until hasChanged == false
 end

function utilityLibrary.findClosestClosureArrayfromBuffer(frameHandle,handleDummy,visionCameraHandle,targetDestination,handleClosure,indexStart)

   distanceFromRobot={}
   local T_VS_CloFC={} --local
   local T_W_CloFC={} --local
   local T_Buffer_Clo={} --local
   swapped={}
   local baseHandle=sim.getObjectHandle('UR10_link1_visible')
   local T_W_Buffer=sim.getObjectMatrix(handleDummy,-1)
   
   sim.invertMatrix(T_W_Buffer)
   
   T_W_Base=sim.getObjectMatrix(baseHandle,-1)
   T_Base_VS=sim.getObjectMatrix(visionCameraHandle,baseHandle)
   T_W_Cam=sim.multiplyMatrices(T_W_Base,T_Base_VS)

   for j=indexStart,#frameHandle,1 do
      T_VS_CloFC[j]={}
      T_W_CloFC[j]={}
      distanceFromRobot[j]={}
      for i=1,2,1 do
         T_VS_CloFC[j][i]=sim.getObjectMatrix(frameHandle[j][i],visionCameraHandle)
         distanceFromRobot[j][i]=TNorm(T_VS_CloFC[j][i])
         T_W_CloFC[j][i]=sim.multiplyMatrices(T_W_Cam,T_VS_CloFC[j][i])
      end

      swapped[j]=true
      
   end
   
   --guardo la distanza dei singoli tappi, e li ordino in base ala distanza del primo dummy tra i due interni al tappo

   utilityLibrary.bubbleSort(distanceFromRobot,frameHandle,handleClosure,T_W_CloFC,indexStart)

   --una volta messi in ordine, metto in ordine anche internamente i dummy in base alla distanza dal sensore di visione.

   for j=indexStart,#frameHandle,1 do
      if distanceFromRobot[j][2]<distanceFromRobot[j][1] then
         frameHandle[j][1],frameHandle[j][2]=frameHandle[j][2],frameHandle[j][1]
         T_W_CloFC[j][1],T_W_CloFC[j][2]=T_W_CloFC[j][2],T_W_CloFC[j][1]
         swapped[j]=false   
      end
   end
   
   --------------------------Sto riordinando anche la matrice Vision sensor-closure in modo da passare anche quella
   return frameHandle,swapped,handleClosure,T_W_CloFC
end

function utilityLibrary.computePathPick(handleDummy,visionCameraHandle,gripperDummyHandle,tipDummy,targetDummy,handleTank,destinationDummyTarget,startIndex,matriciesClosure)

   local index=-1
   local T_W_CloPP={}
   for i=startIndex,#handleDummy,1 do
      if checkPosition(handleDummy[i][1],handleTank,visionCameraHandle)==1 then
         T_W_CloPP=matriciesClosure[i][1]--=sim.getObjectMatrix(handleDummy[i][1],visionCameraHandle)
         sim.setObjectMatrix(destinationDummyTarget,-1,T_W_CloPP)
         index=i
         break
      end
   end

   if index~=-1 then
      local baseHandle=sim.getObjectHandle('UR10_link1_visible')
      
      local T_W_Base=sim.getObjectMatrix(baseHandle,-1)
      local T_Base_VS=sim.getObjectMatrix(visionCameraHandle,baseHandle)
      local T_Base_Gripper=sim.getObjectMatrix(gripperDummyHandle,baseHandle)
      local T_W_VS=sim.multiplyMatrices(T_W_Base,T_Base_VS)
      local T_W_HeightClo=utilityLibrary.getMatrixShiftedAlongZ(T_W_CloPP,0.1)
      local T_W_Gripper=sim.multiplyMatrices(T_W_Base,T_Base_Gripper)

      sim.setObjectMatrix(tipDummy,-1,T_W_Gripper)
      sim.setObjectMatrix(targetDummy,-1,T_W_Gripper)
      sim.setObjectParent(tipDummy,gripperDummyHandle,true)

      path=utilityLibrary.generate3PointsPathDiffTarget(T_W_Gripper,T_W_HeightClo,T_W_CloPP,targetDummy,1,0,20,0.2,0.2,1,0,20,0.2,0.2,0,0,0,0.2,0.2)
      
      activateSuctionPad(true)
   end

   print(index,'index')

   if index==-1 then
      print('There is no closure that can be manipulated')
   end

   return index

end

function utilityLibrary.computeGoingToSecSensPath(gripperDummyHandle,secondSensorDummy,targetDummy,swapped)

   local baseHandle=sim.getObjectHandle('UR10_link1_visible')
   
   local T_W_Base=sim.getObjectMatrix(baseHandle,-1)
   local T_Base_Gripper=sim.getObjectMatrix(gripperDummyHandle,baseHandle)
   local T_W_Gripper=sim.multiplyMatrices(T_W_Base,T_Base_Gripper)
   local T_W_HeightGripper=utilityLibrary.getMatrixShiftedAlongZ(T_W_Gripper,0.1)
   local T_W_HeightGripperRotated=utilityLibrary.rotateMatrixAlongZ(T_W_HeightGripper,math.pi)
   local T_W_SecSens=sim.getObjectMatrix(secondSensorDummy,-1)
   local T_W_ShiftSecSens=utilityLibrary.getMatrixShiftedAlongZ(T_W_SecSens,0.1)
   local T_W_ShiftShiftSecSens=utilityLibrary.getMatrixShiftedAlongZ(T_W_ShiftSecSens,0.1)
   local T_W_MiddleReadCodeMatrix=utilityLibrary.getMatrixShiftedAlongY(T_W_ShiftShiftSecSens,0.3)
   
   if swapped==false then
      local path=utilityLibrary.generate5PointsPathDiffTarget(T_W_Gripper,T_W_HeightGripperRotated,T_W_MiddleReadCodeMatrix,T_W_ShiftShiftSecSens,T_W_ShiftSecSens,targetDummy,1,0,20,0.2,0.2,1,0,20,3,3,1,0,20,0.2,0.2,1,0,20,0.2,0.2,0,0,0,0.2,0.2)
   else
      local path=utilityLibrary.generate5PointsPathDiffTarget(T_W_Gripper,T_W_HeightGripper,T_W_MiddleReadCodeMatrix,T_W_ShiftShiftSecSens,T_W_ShiftSecSens,targetDummy,1,0,20,0.2,0.2,1,0,20,1,1,1,0,20,0.2,0.2,1,0,20,0.2,0.2,0,0,0,0.2,0.2)
   end
end

function utilityLibrary.generate2PointsPathDiffTarget(matrixA,matrixB,targetHandle,relVel1,virtDist1,numBiez1,biezInt11,biezInt12,relVel2,virtDist2,numBiez2,biezInt21,biezInt22)

   local path=sim.createPath(sim.pathproperty_show_line,nil,nil,nil)
   --sim.setModelProperty(path,sim.modelproperty_not_visible)
   
   local ptData1={-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1}
   local ptData2={-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1}

   ptData1 = createParameter(matrixA,relVel1,virtDist1,numBiez1,biezInt11,biezInt12)
   result=sim.insertPathCtrlPoints(path,0,0,1,ptData1);

   ptData2 = createParameter(matrixB,relVel2,virtDist2,numBiez2,biezInt21,biezInt22)
   result=sim.insertPathCtrlPoints(path,0,1,1,ptData2);

   sim.followPath(targetHandle,path,3,0,0.5,0.5)
   result=sim.removeObject(path)


end

function utilityLibrary.generate3PointsPathDiffTarget(matrixA,matrixB,matrixC,targetHandle,relVel1,virtDist1,numBiez1,biezInt11,biezInt12,relVel2,virtDist2,numBiez2,biezInt21,biezInt22,relVel3,virtDist3,numBiez3,biezInt32,biezInt33)

   path=sim.createPath(sim.pathproperty_show_line,nil,nil,nil)
   
   local ptData1={-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1}
   local ptData2={-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1}
   local ptData3={-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1}

   ptData1 = createParameter(matrixA,relVel1,virtDist1,numBiez1,biezInt11,biezInt12)
   result=sim.insertPathCtrlPoints(path,0,0,1,ptData1);

   ptData2 = createParameter(matrixB,relVel2,virtDist2,numBiez2,biezInt21,biezInt22)
   result=sim.insertPathCtrlPoints(path,0,1,1,ptData2);

   ptData3 = createParameter(matrixC,relVel3,virtDist3,numBiez3,biezInt32,biezInt33)
   result=sim.insertPathCtrlPoints(path,0,2,1,ptData3);

   sim.followPath(targetHandle,path,3,0,1,0.5)
   result=sim.removeObject(path)

end

function utilityLibrary.generate4PointsPathDiffTarget(matrixA,matrixB,matrixC,matrixD,targetHandle,relVel1,virtDist1,numBiez1,biezInt11,biezInt12,relVel2,virtDist2,numBiez2,biezInt21,biezInt22,relVel3,virtDist3,numBiez3,biezInt32,biezInt33,relVel4,virtDist4,numBiez4,biezInt43,biezInt44)

   path=sim.createPath(sim.pathproperty_show_line,nil,nil,nil)
   local ptData = {}

   for i=1,4,1 do
      ptData[i]={-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1}
   end
   
   ptData[1] = createParameter(matrixA,relVel1,virtDist1,numBiez1,biezInt11,biezInt12)
   result=sim.insertPathCtrlPoints(path,0,1,1,ptData[1]);

   ptData[2] = createParameter(matrixB,relVel2,virtDist2,numBiez2,biezInt21,biezInt22)
   result=sim.insertPathCtrlPoints(path,0,2,1,ptData[2]);

   ptData[3] = createParameter(matrixC,relVel3,virtDist3,numBiez3,biezInt32,biezInt33)
   result=sim.insertPathCtrlPoints(path,0,3,1,ptData[3]);

   ptData[4] = createParameter(matrixD,relVel4,virtDist4,numBiez4,biezInt43,biezInt44)
   result=sim.insertPathCtrlPoints(path,0,4,1,ptData[4]);

   sim.followPath(targetHandle,path,3,0,1,0.5)
   result=sim.removeObject(path)

end

function utilityLibrary.generate5PointsPathDiffTarget(matrixA,matrixB,matrixC,matrixD,matrixE,targetHandle,relVel1,virtDist1,numBiez1,biezInt11,biezInt12,relVel2,virtDist2,numBiez2,biezInt21,biezInt22,relVel3,virtDist3,numBiez3,biezInt32,biezInt33,relVel4,virtDist4,numBiez4,biezInt43,biezInt44,relVel5,virtDist5,numBiez5,biezInt54,biezInt55)

   path=sim.createPath(sim.pathproperty_show_line,nil,nil,nil)
   local ptData = {}

   for i=1,5,1 do
      ptData[i]={-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1}
   end
   
   ptData[1] = createParameter(matrixA,relVel1,virtDist1,numBiez1,biezInt11,biezInt12)
   result=sim.insertPathCtrlPoints(path,0,1,1,ptData[1]);

   ptData[2] = createParameter(matrixB,relVel2,virtDist2,numBiez2,biezInt21,biezInt22)
   result=sim.insertPathCtrlPoints(path,0,2,1,ptData[2]);

   ptData[3] = createParameter(matrixC,relVel3,virtDist3,numBiez3,biezInt32,biezInt33)
   result=sim.insertPathCtrlPoints(path,0,3,1,ptData[3]);

   ptData[4] = createParameter(matrixD,relVel4,virtDist4,numBiez4,biezInt43,biezInt44)
   result=sim.insertPathCtrlPoints(path,0,4,1,ptData[4]);

   ptData[5] = createParameter(matrixE,relVel5,virtDist5,numBiez5,biezInt54,biezInt55)
   result=sim.insertPathCtrlPoints(path,0,5,1,ptData[5]);

   sim.followPath(targetHandle,path,3,0,1,0.5)
   result=sim.removeObject(path)

end

function utilityLibrary.generate6PointsPathDiffTarget(matrixA,matrixB,matrixC,matrixD,matrixE,matrixF,targetHandle,relVel1,virtDist1,numBiez1,biezInt11,biezInt12,relVel2,virtDist2,numBiez2,biezInt21,biezInt22,relVel3,virtDist3,numBiez3,biezInt32,biezInt33,relVel4,virtDist4,numBiez4,biezInt43,biezInt44,relVel5,virtDist5,numBiez5,biezInt54,biezInt55,relVel6,virtDist6,numBiez6,biezInt65,biezInt66)

   path=sim.createPath(sim.pathproperty_show_line,nil,nil,nil)
   local ptData = {}

   for i=1,7,1 do
      ptData[i]={-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1}
   end
   
   ptData[1] = createParameter(matrixA,relVel1,virtDist1,numBiez1,biezInt11,biezInt12)
   result=sim.insertPathCtrlPoints(path,0,1,1,ptData[1]);

   ptData[2] = createParameter(matrixB,relVel2,virtDist2,numBiez2,biezInt21,biezInt22)
   result=sim.insertPathCtrlPoints(path,0,2,1,ptData[2]);

   ptData[3] = createParameter(matrixC,relVel3,virtDist3,numBiez3,biezInt32,biezInt33)
   result=sim.insertPathCtrlPoints(path,0,3,1,ptData[3]);

   ptData[4] = createParameter(matrixD,relVel4,virtDist4,numBiez4,biezInt43,biezInt44)
   result=sim.insertPathCtrlPoints(path,0,4,1,ptData[4]);

   ptData[5] = createParameter(matrixE,relVel5,virtDist5,numBiez5,biezInt54,biezInt55)
   result=sim.insertPathCtrlPoints(path,0,5,1,ptData[5]);

   ptData[6] = createParameter(matrixF,relVel6,virtDist6,numBiez6,biezInt65,biezInt66)
   result=sim.insertPathCtrlPoints(path,0,6,1,ptData[6]);


   sim.followPath(targetHandle,path,3,0,1,0.5)
   result=sim.removeObject(path)

end


function utilityLibrary.generateChangingOrientationPath(oriDummyHandle,targetHandle,gripperDummyHandle,handleDummy,indexDummy)
   
   local baseHandle=sim.getObjectHandle('UR10_link1_visible')

   local T_W_Base=sim.getObjectMatrix(baseHandle,-1)
   local T_Base_Gripper=sim.getObjectMatrix(gripperDummyHandle,baseHandle)
   local T_W_Gripper=sim.multiplyMatrices(T_W_Base,T_Base_Gripper)
   local T_W_OriDummy=sim.getObjectMatrix(oriDummyHandle,-1)
   local T_W_OriDummyShiftedY=utilityLibrary.getMatrixShiftedAlongY(T_W_OriDummy,-0.1)
   local T_W_OriDummy11=utilityLibrary.getMatrixShiftedAlongZ(T_W_OriDummyShiftedY,0.025)
   local T_W_OriDummy11Rotated=utilityLibrary.rotateMatrixAlongY(T_W_OriDummy11,-math.pi)
   local T_W_OriDummy12Rotated=utilityLibrary.getMatrixShiftedAlongY(T_W_OriDummy11Rotated,0.1)
   local T_W_OriDummy22Rotated=utilityLibrary.getMatrixShiftedAlongZ(T_W_OriDummy12Rotated,0.05)
   local T_W_OriDummy23Rotated=utilityLibrary.getMatrixShiftedAlongY(T_W_OriDummy22Rotated,-0.1)
   local T_W_OriDummy24Rotated=utilityLibrary.getMatrixShiftedAlongZ(T_W_OriDummy23Rotated,-0.1)
   local T_W_OriDummy24=utilityLibrary.rotateMatrixAlongY(T_W_OriDummy24Rotated,math.pi)
   local T_W_OriDummy25=utilityLibrary.getMatrixShiftedAlongY(T_W_OriDummy24,0.1)
   local T_W_OriDummy25Rotated=utilityLibrary.rotateMatrixAlongZ(T_W_OriDummy25,math.pi)
   local T_W_OriDummy26=utilityLibrary.getMatrixShiftedAlongZ(T_W_OriDummy25Rotated,-0.060)
   

   utilityLibrary.generate3PointsPathDiffTarget(T_W_Gripper,T_W_OriDummy11Rotated,T_W_OriDummy12Rotated,targetHandle,1,0,0,0.2,0.2,1,0,20,0.2,0.2,0,0,20,0.1,0.1)

   activateSuctionPad(false)

   handleDummy[indexDummy][1],handleDummy[indexDummy][2]=handleDummy[indexDummy][2],handleDummy[indexDummy][1]--Swapping the dummy becouse i have to focus to the orientedly correct frame

   utilityLibrary.generate6PointsPathDiffTarget(T_W_OriDummy12Rotated,T_W_OriDummy22Rotated,T_W_OriDummy23Rotated,T_W_OriDummy24,T_W_OriDummy25Rotated,T_W_OriDummy26,targetHandle,1,0,20,0.1,0.1,1,0,20,2,2,1,0,20,2,2,1,0,20,2,2,1,0,20,0.5,0.5,0,0,20,0.1,0.1)

   activateSuctionPad(true)

end

function utilityLibrary.generateChangingOrientationPath2(oriDummyHandle,targetHandle,gripperDummyHandle,handleDummy,indexDummy,tipDummy)
   
   local baseHandle=sim.getObjectHandle('UR10_link1_visible')

   local T_W_Base=sim.getObjectMatrix(baseHandle,-1)
   local T_Base_Gripper=sim.getObjectMatrix(gripperDummyHandle,baseHandle)
   local T_Gripper_Clo=sim.getObjectMatrix(handleDummy[indexDummy][1],gripperDummyHandle)
   local T_W_Gripper=sim.multiplyMatrices(T_W_Base,T_Base_Gripper)
   local T_W_Clo=sim.multiplyMatrices(T_W_Gripper,T_Gripper_Clo)

   sim.setObjectMatrix(tipDummy,-1,T_W_Gripper)
   sim.setObjectMatrix(targetHandle,-1,T_W_Gripper)

   local T_W_OriDummy=sim.getObjectMatrix(oriDummyHandle,-1)
   local T_W_OriDummyShiftedY=utilityLibrary.getMatrixShiftedAlongY(T_W_OriDummy,-0.1)
   local T_W_OriDummy11=utilityLibrary.getMatrixShiftedAlongZ(T_W_OriDummyShiftedY,0.025)
   local T_W_OriDummy11Rotated=utilityLibrary.rotateMatrixAlongY(T_W_OriDummy11,-math.pi)
   local T_W_OriDummy12Rotated=utilityLibrary.getMatrixShiftedAlongY(T_W_OriDummy11Rotated,0.1)
   local T_W_OriDummy22Rotated=utilityLibrary.getMatrixShiftedAlongZ(T_W_OriDummy12Rotated,0.05)
   local T_W_OriDummy23Rotated=utilityLibrary.getMatrixShiftedAlongY(T_W_OriDummy22Rotated,-0.1)
   local T_W_OriDummy24Rotated=utilityLibrary.getMatrixShiftedAlongZ(T_W_OriDummy23Rotated,-0.1)
   local T_W_OriDummy24=utilityLibrary.rotateMatrixAlongY(T_W_OriDummy24Rotated,math.pi)
   local T_W_OriDummy25=utilityLibrary.getMatrixShiftedAlongY(T_W_OriDummy24,0.1)
   local T_W_OriDummy25Rotated=utilityLibrary.rotateMatrixAlongZ(T_W_OriDummy25,math.pi)
   local T_W_OriDummy26=utilityLibrary.getMatrixShiftedAlongZ(T_W_OriDummy25Rotated,-0.060)

   local changed=true

   local path=utilityLibrary.generate3PointsPathDiffTarget(T_W_Gripper,T_W_OriDummy11Rotated,T_W_OriDummy12Rotated,targetHandle,1,0,0,0.2,0.2,1,0,20,0.2,0.2,0,0,20,0.1,0.1)

   activateSuctionPad(false)

   handleDummy[indexDummy][1],handleDummy[indexDummy][2]=handleDummy[indexDummy][2],handleDummy[indexDummy][1]--Swapping the dummy becouse i have to focus to the orientedly correct frame

   local path=utilityLibrary.generate6PointsPathDiffTarget(T_W_OriDummy12Rotated,T_W_OriDummy22Rotated,T_W_OriDummy23Rotated,T_W_OriDummy24,T_W_OriDummy25Rotated,T_W_OriDummy26,targetHandle,1,0,20,0.1,0.1,1,0,20,2,2,1,0,20,2,2,1,0,20,2,2,1,0,20,0.5,0.5,0,0,20,0.1,0.1)

   activateSuctionPad(true)

   changed=false

   return changed

end

function utilityLibrary.pickClosureToCtrlChange(dummyUp,handleGripper,tipDummy,targetDummy)

   local firstPositionMatrix = sim.getObjectMatrix(dummyUp,-1)

   local baseHandle=sim.getObjectHandle('UR10_link1_visible')

   local T_W_Base=sim.getObjectMatrix(baseHandle,-1)
   local T_Base_Gripper=sim.getObjectMatrix(gripperDummyHandle,baseHandle)
   local T_W_Gripper=sim.multiplyMatrices(T_W_Base,T_Base_Gripper)
   local firstPositionMatrixShifted=utilityLibrary.getMatrixShiftedAlongZ(firstPositionMatrix,0.05)

   sim.setObjectMatrix(tipDummy,-1,T_W_Gripper)
   sim.setObjectMatrix(targetDummy,-1,T_W_Gripper)

   local path=utilityLibrary.generate3PointsPathDiffTarget(T_W_Gripper,firstPositionMatrixShifted,firstPositionMatrix,targetDummy,1,0,20,0.2,0.2,1,0,20,0.2,0.2,0,0,0,0.2,0.2)

   activateSuctionPad(true)

end

function utilityLibrary.generateCorrectionPath(firstMatrix,missAllignment,angle)
   
   local positionCentralMatrix={}
   local orientationCentralMatrix={}
   local positionfirstPointPath={}
   local orientationFirstPointPath={}
   local orientationCentralMatrix = sim.getEulerAnglesFromMatrix(firstMatrix)

   positionCentralMatrix[1]=firstMatrix[4]
   positionCentralMatrix[2]=firstMatrix[8]
   positionCentralMatrix[3]=firstMatrix[12]

   orientationFirstPointPath[1]=math.pi/2
   orientationFirstPointPath[2]=0
   orientationFirstPointPath[3]=orientationCentralMatrix[3]
   
   local firstMatrixReOriented=sim.buildMatrix(positionCentralMatrix,orientationFirstPointPath)

   local relVel1=0.1
   local virtDist1=0
   local numBiez1=50

   local path=sim.createPath(sim.pathproperty_show_line,nil,nil,nil)

   local ptData={}

   ptData[1] = createParameter(firstMatrixReOriented,relVel1,virtDist1,numBiez1,1/missAllignment,1/missAllignment)
   result=sim.insertPathCtrlPoints(path,0,1,1,ptData[1]);

   for i=2,34,1 do   
      ptData[i]={}
      ptData[i][1]=firstMatrix[4]+missAllignment*math.cos((i-2)*2*math.pi/16+angle)
      ptData[i][2]=firstMatrix[8]
      ptData[i][3]=firstMatrix[12]+missAllignment*math.sin((i-2)*2*math.pi/16+angle)
      ptData[i][4]=math.pi/2
      ptData[i][5]=0
      ptData[i][6]=orientationCentralMatrix[3]+(i-2)*2*math.pi/16
      ptData[i][7]=relVel1
      ptData[i][8]=virtDist1
      ptData[i][9]=numBiez1
      ptData[i][10]=1/missAllignment
      ptData[i][11]=1/missAllignment
   end
   
      for i=2,34,1 do
         result=sim.insertPathCtrlPoints(path,0,i,1,ptData[i])
      end
   
   ptData[35] = createParameter(firstMatrixReOriented,relVel1,virtDist1,numBiez1,1/missAllignment,1/missAllignment)
   result=sim.insertPathCtrlPoints(path,0,35,1,ptData[35]);
   sim.followPath(target,path,3,0,0.1,1)
   result=sim.removeObject(path)
end

function utilityLibrary.generateCorrectionPath2(sensorDummy,dummyClosureHandle,tipDummy,targetDummy,shiftData)

   local T_W_VS=sim.getObjectMatrix(sensorDummy,-1)
   local T_VS2_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
   local T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS2_Clo)
   local T_W_ShiftVS2=utilityLibrary.getMatrixShiftedAlongZ(T_W_VS,shiftData)

   sim.setObjectMatrix(tipDummy,-1,T_W_Clo)
   sim.setObjectMatrix(targetDummy,-1,T_W_Clo)
   local path=utilityLibrary.generate2PointsPathDiffTarget(T_W_Clo,T_W_ShiftVS2,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)
   
end

function utilityLibrary.generateReadCodePath(secondSensorDummy,dummyClosureHandle,tipDummy,targetDummy)

   local T_W_VS2=sim.getObjectMatrix(secondSensorDummy,-1)
   local T_VS2_Clo=sim.getObjectMatrix(dummyClosureHandle,secondSensorDummy)
   local T_W_ShiftVS2=utilityLibrary.getMatrixShiftedAlongZ(T_W_VS2,0.05)
   local T_W_Clo=sim.multiplyMatrices(T_W_VS2,T_VS2_Clo)

   local path=utilityLibrary.generate2PointsPathDiffTarget(T_W_Clo,T_W_ShiftVS2,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

end

function utilityLibrary.generatePathForCut(secondSensorDummy,dummyClosureHandle,tipDummy,targetDummy,cuttingDummy)

   local T_W_VS2=sim.getObjectMatrix(secondSensorDummy,-1)
   local T_VS2_Clo=sim.getObjectMatrix(dummyClosureHandle,secondSensorDummy)
   local T_W_Clo=sim.multiplyMatrices(T_W_VS2,T_VS2_Clo)
   local T_W_DCut=sim.getObjectMatrix(cuttingDummy,-1)
   local T_W_DCutShiftedZ=utilityLibrary.getMatrixShiftedAlongZ(T_W_DCut,0.1)

   sim.setObjectMatrix(tipDummy,-1,T_W_Clo)
   sim.setObjectMatrix(targetDummy,-1,T_W_Clo)

   local path=utilityLibrary.generate3PointsPathDiffTarget(T_W_Clo,T_W_DCutShiftedZ,T_W_DCut,targetDummy,1,0,20,0.2,0.2,1,0,20,0.2,0.2,0,0,20,0.2,0.2)

   activateSuctionPad(false)

end

function utilityLibrary.generatePathForwaitCut(tipDummy,targetDummy,cuttingDummy,gripperDummy)

   local baseHandle=sim.getObjectHandle('UR10_link1_visible')
   local T_W_Base=sim.getObjectMatrix(baseHandle,-1)
   local T_Base_Gripper=sim.getObjectMatrix(gripperDummy,baseHandle)
   local T_W_Gripper=sim.multiplyMatrices(T_W_Base,T_Base_Gripper)
   local T_W_cuttingDummy=sim.getObjectMatrix(cuttingDummy,-1)
   local T_W_cuttingDummyShiftedZ=utilityLibrary.getMatrixShiftedAlongZ(T_W_cuttingDummy,0.7)
   local cuttingDummyShifted=utilityLibrary.getMatrixShiftedAlongX(T_W_cuttingDummyShiftedZ,0.1)
   local cuttingDummyShiftedR=utilityLibrary.rotateMatrixAlongY(cuttingDummyShifted,math.pi/2)

   sim.setObjectMatrix(tipDummy,-1,T_W_Gripper)
   sim.setObjectMatrix(targetDummy,-1,T_W_Gripper)

   local path=utilityLibrary.generate2PointsPathDiffTarget(T_W_Gripper,cuttingDummyShiftedR,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

   activateSuctionPad(true)

end

function utilityLibrary.generatePathFromCut(tipDummy,targetDummy,cuttingDummy,gripperDummy)

   local baseHandle=sim.getObjectHandle('UR10_link1_visible')
   local T_W_Base=sim.getObjectMatrix(baseHandle,-1)
   local T_Base_Gripper=sim.getObjectMatrix(gripperDummy,baseHandle)
   local T_W_Gripper=sim.multiplyMatrices(T_W_Base,T_Base_Gripper)
   local T_W_cuttingDummy=sim.getObjectMatrix(cuttingDummy,-1)

   local path=utilityLibrary.generate2PointsPathDiffTarget(T_W_Gripper,T_W_cuttingDummy,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)


end

function utilityLibrary.generatePathToAnalysis(tipDummy,targetDummy,controlPlatformDummy,gripperDummy)

   
   local baseHandle=sim.getObjectHandle('UR10_link1_visible')
   local T_W_Base=sim.getObjectMatrix(baseHandle,-1)
   local T_Base_Gripper=sim.getObjectMatrix(gripperDummy,baseHandle)
   local T_W_Gripper=sim.multiplyMatrices(T_W_Base,T_Base_Gripper)
   local T_W_ControlDummy=sim.getObjectMatrix(controlPlatformDummy,-1)
   local T_W_ControlDummyShifted=utilityLibrary.getMatrixShiftedAlongX(T_W_ControlDummy,0.2)
   local T_W_ControlDummyShifted1=utilityLibrary.getMatrixShiftedAlongX(T_W_ControlDummy,0.08)
   local T_W_ControlDummyShifted1R=utilityLibrary.rotateMatrixAlongY(T_W_ControlDummyShifted1,math.pi/2)

   local path=utilityLibrary.generate3PointsPathDiffTarget(T_W_Gripper,T_W_ControlDummyShifted,T_W_ControlDummyShifted1R,targetDummy,1,0,20,0.2,0.2,1,0,20,0.2,0.2,0,0,20,0.2,0.2)

end

function utilityLibrary.removalPathFromVisionSensor(tipDummy,targetDummy,gripperDummy,sensorDummy)

   local baseHandle=sim.getObjectHandle('UR10_link1_visible')
   local T_W_Base=sim.getObjectMatrix(baseHandle,-1)
   local T_Base_Gripper=sim.getObjectMatrix(gripperDummy,baseHandle)
   local T_W_Gripper=sim.multiplyMatrices(T_W_Base,T_Base_Gripper)
   local T_W_SensorDummy=sim.getObjectMatrix(sensorDummy,-1)
   local T_W_SensorDummyShifted=utilityLibrary.getMatrixShiftedAlongZ(T_W_SensorDummy,0.1)

   sim.setObjectMatrix(tipDummy,-1,T_W_Gripper)
   sim.setObjectMatrix(targetDummy,-1,T_W_Gripper)

   local path=utilityLibrary.generate2PointsPathDiffTarget(T_W_Gripper,T_W_SensorDummyShifted,targetDummy,1,0,20,0.2,0.2,0,0,20,0.2,0.2)

end

function utilityLibrary.generateThrowPath(secondSensorDummy,dummyClosureHandle,tipDummy,targetDummy)

   local T_W_VS2=sim.getObjectMatrix(secondSensorDummy,-1)
   local T_VS2_Clo=sim.getObjectMatrix(dummyClosureHandle,secondSensorDummy)
   local T_W_Clo=sim.multiplyMatrices(T_W_VS2,T_VS2_Clo)
   local T_W_ShiftVS2Z=utilityLibrary.getMatrixShiftedAlongZ(T_W_VS2,0.2)--E' sempre sotto al vision sensor visto che lo prendo come riferimento. Comunque nell'ambiente è una famiglia
   local T_W_ShiftVS2X=utilityLibrary.getMatrixShiftedAlongX(T_W_VS2,0.3)
   local T_W_ShiftVS2XR=utilityLibrary.rotateMatrixAlongY(T_W_ShiftVS2X,-math.pi/2)

   local path=utilityLibrary.generate3PointsPathDiffTarget(T_W_Clo,T_W_ShiftVS2Z,T_W_ShiftVS2XR,targetDummy,1,20,20,0.2,0.2,1,20,20,0.2,0.2,0,0,0,0.2,0.2)

   activateSuctionPad(false)

end

function utilityLibrary.generatePathTankPath(tankMatrix,tipDummy,targetDummy,destinationDummy,visionCameraHandle)--da aggiungere la previousMatrix

   local shiftedZTankMatrix = utilityLibrary.getMatrixShiftedAlongX(tankMatrix,0.5)
   local baseHandle=sim.getObjectHandle('UR10_link1_visible')
   sim.setObjectParent(tipDummy,visionCameraHandle,true)

   sim.setObjectMatrix(destinationDummy,-1,shiftedZTankMatrix)
   sim.setObjectOrientation(destinationDummy,-1,{math.pi,0,0})
   local destinationDummyMatrix=sim.getObjectMatrix(destinationDummy,-1)

   T_W_Base=sim.getObjectMatrix(baseHandle,-1)
   T_Base_VS=sim.getObjectMatrix(visionCameraHandle,baseHandle)
   T_W_VS=sim.multiplyMatrices(T_W_Base,T_Base_VS)
   sim.setObjectMatrix(tipDummy,-1,T_W_VS)
   sim.setObjectMatrix(targetDummy,-1,T_W_VS)

   utilityLibrary.generate2PointsPathDiffTarget(T_W_VS,destinationDummyMatrix,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

end

function utilityLibrary.generatePlacePath(dummyClosureHandle,placingMatrix,sensorDummy,targetDummy,tipDummy)

   local T_W_VS=sim.getObjectMatrix(sensorDummy,-1)
   local T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
   local T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)
   local T_W_VSShifted=utilityLibrary.getMatrixShiftedAlongZ(T_W_VS,0.1)

   local shiftedPlaceMatrix=utilityLibrary.getMatrixShiftedAlongZ(placingMatrix,0.05)

   sim.setObjectMatrix(tipDummy,-1,T_W_Clo)
   sim.setObjectMatrix(targetDummy,-1,T_W_Clo)

   local path=utilityLibrary.generate2PointsPathDiffTarget(T_W_Clo,T_W_VSShifted,targetDummy,1,0,20,0.2,0.2,0,0,0,0.2,0.2)

   local path=utilityLibrary.generate3PointsPathDiffTarget(T_W_VSShifted,shiftedPlaceMatrix,placingMatrix,targetDummy,1,0,20,0.2,0.2,1,0,20,0.2,0.2,0,0,0,0.2,0.2)

   activateSuctionPad(false)

   local path=utilityLibrary.generate2PointsPathDiffTarget(placingMatrix,shiftedPlaceMatrix,targetDummy,1,0,20,0.2,0.2,0,0,0,0.2,0.2)
   
end

return utilityLibrary