local userInterface =  {}

function userInterface.add(a,b)
    print(a+b)
end

function userInterface.closureGenerationCircular(bigDiameter,smallDiameter,numberOfcuboid,heightOfBase,heightOfCylinder,numberOfClosures)
   
    local mediumDiameter=(bigDiameter+smallDiameter)/2-0.001
    local bigCircumference=math.pi*bigDiameter
    local smallCircumference=math.pi*smallDiameter
    local mediumCircumference=(bigCircumference+smallCircumference)/2
    local cuboidLenght=bigCircumference/numberOfCuboid
    local stepBase=2*math.pi/(numberOfClosures-1)
    local stepCuboid=2*math.pi/numberOfCuboid
    local masses={}
    local opp=1

    for j=0,numberOfClosures-1,1 do
        base=sim.createPureShape(2,10,{bigDiameter,bigDiameter,heightOfBase},0.01,nil)
        if j==0 then
            sim.setObjectPosition(base,-1,{0,0,1})
            sim.setShapeColor(base,nil,sim.colorcomponent_ambient_diffuse,{0,50,230})
        else    
            sim.setObjectPosition(base,-1,{(numberOfClosures*bigDiameter-0.38)*math.cos(stepBase*j)*1.05,(numberOfClosures*bigDiameter-0.38)*math.sin(stepBase*j)*1.05,1})
            sim.setShapeColor(base,nil,sim.colorcomponent_ambient_diffuse,{0,50,230})
        end
        sim.setObjectSpecialProperty(base,sim.objectspecialproperty_detectable_all+sim.objectspecialproperty_renderable+sim.objectspecialproperty_collidable+sim.objectspecialproperty_measurable)  
                --print(math.cos(stepBase*j))
        for i=0,numberOfCuboid-1,1 do
            masses[i]=sim.createPureShape(0,10,{cuboidLenght,heightOfBase/10,heightOfCylinder},0.005,nil)
            sim.setShapeColor(masses[i],nil,sim.colorcomponent_ambient_diffuse,{0,0,230})
            sim.setObjectPosition(masses[i],base,{(bigDiameter-heightOfBase/10)/2*math.cos(stepCuboid*i+(math.pi/2)),(bigDiameter-heightOfBase/10)/2*math.sin(stepCuboid*i+(math.pi/2)),heightOfBase})
            sim.setObjectOrientation(masses[i],base,{0,0,stepCuboid*i})
            sim.setObjectSpecialProperty(masses[i],sim.objectspecialproperty_detectable_all+sim.objectspecialproperty_renderable+sim.objectspecialproperty_collidable+sim.objectspecialproperty_measurable)
        end

            --sim.setObjectParent(bigCylinder,smallCylinder,true)
            --sim.setObjectParent(base,bigCylinder,true)
        sim.setObjectParent(masses[0],base,true)

        for i=1,numberOfCuboid-1,1 do
            sim.setObjectParent(masses[i],masses[i-1],true)
        end
            objects=sim.getObjectsInTree(base,sim.handle_all,0)
            objects[1]=sim.groupShapes(objects)
                
            --objectHandle[j]=sim.getObjects(j+2,sim.object_shape_type)
            --scriptHandle[j]=sim.addScript(sim.scripttype_childscript+sim.scripttype_threaded)
    end
            
    --return scriptHandle,objectHandle
            
end

function userInterface.closureGenerationRectangular(bigDiameter,smallDiameter,numberOfcuboid,heightOfBase,heightOfCylinder,numberOfClosures,xBoxDimension,count,layersNumber,numberOfPath)
   
    local childScriptHandle=sim.getScriptAssociatedWithObject(model)
    local mediumDiameter=(bigDiameter+smallDiameter)/2-0.001
    local bigCircumference=math.pi*bigDiameter
    local smallCircumference=math.pi*smallDiameter
    local cuboidLenght=bigCircumference/numberOfCuboid
    local stepCuboid=2*math.pi/numberOfCuboid
    local masses={}
    local objects={}
    local h=1
    local elementsPerRows=math.floor(xBoxDimension/(bigDiameter+0.05))
    local k=count%elementsPerRows
    local h=math.floor(count/elementsPerRows)
    local vertices={}
    local indices={}
    local meshHandle={}

    local str1=[[C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\I__disegni_capsule_3d_formato_STL\\AB26CSD11-A8705\\AB26CSD11-A8705.STL]]
    local str2=[[C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\I__disegni_capsule_3d_formato_STL\\AB29W36-A8725\\AB29W36-A8725.STL]]
    local str3=[[C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\I__disegni_capsule_3d_formato_STL\\AB38HF7-A8723\\AB38HF7-A8723.STL]]
    local str4=[[C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\I__disegni_capsule_3d_formato_STL\\AB1881CSD32-A8695\\AB1881CSD32-A8695.STL]]    
    local path

    if numberOfPath==1 then
        path=str1
    elseif numberOfPath==2 then
        path=str2
    elseif numberOfPath==3 then
        path=str3
    elseif numberOfPath==4 then
        path=str4
    end

    for j=1,numberOfClosures,1 do
        local dummyHandleUP=sim.createDummy(0.005,nil)
        local dummyHandleDOWN=sim.createDummy(0.005,nil)
        base=sim.createPureShape(2,10,{bigDiameter,bigDiameter,heightOfBase},0.01,nil)
        sim.setObjectPosition(base,-1,{k*(bigDiameter+0.015)-0.75,h*(bigDiameter+0.01)+0.32,(heightOfBase+heightOfCylinder)*layersNumber+0.1})--Ho tolto 0.1 nella Z per provare, sarebbe
        sim.setShapeColor(base,nil,sim.colorcomponent_ambient_diffuse,{0,50,230})                                                             --da mettere al posto di -0.75 e 0.32 i valori 
        sim.setObjectInt32Parameter(base,10,256)                                                                                              --della posizione e della dimensione del box
        --sim.setObjectSpecialProperty(base,sim.objectspecialproperty_detectable_all+sim.objectspecialproperty_renderable+sim.objectspecialproperty_collidable+sim.objectspecialproperty_measurable)
        
        k=k+1

        if k==elementsPerRows then
            h=h+1
            k=0
        end
        for i=0,numberOfCuboid-1,1 do
            masses[i]=sim.createPureShape(0,10,{cuboidLenght,heightOfBase/10,heightOfCylinder},0.005,nil)
            sim.setShapeColor(masses[i],nil,sim.colorcomponent_ambient_diffuse,{0,0,230})
            sim.setObjectPosition(masses[i],base,{(bigDiameter-heightOfBase/10)/2*math.cos(stepCuboid*i+(math.pi/2)),(bigDiameter-heightOfBase/10)/2*math.sin(stepCuboid*i+(math.pi/2)),-heightOfBase})
            sim.setObjectOrientation(masses[i],base,{0,0,stepCuboid*i})
            sim.setObjectInt32Parameter(masses[i],10,256)
            --sim.setObjectSpecialProperty(masses[i],sim.objectspecialproperty_detectable_all+sim.objectspecialproperty_renderable+sim.objectspecialproperty_collidable+sim.objectspecialproperty_measurable)
        end

            vertices,indices=sim.importMesh(0,path,1,0,0.00169595)
            for i=1,#vertices,1 do
                meshHandle[j]=sim.createMeshShape(1,0,vertices[i],indices[i])
            end
                
        sim.setShapeColor(meshHandle[j],'',sim.colorcomponent_ambient,{0.5,0.5,0.5})
        sim.setObjectOrientation(meshHandle[j],-1,{0,math.pi/2,0})
        sim.setObjectPosition(meshHandle[j],base,{0,0,-0.00645})
        sim.setObjectPosition(dummyHandleUP,base,{0,0,heightOfBase/2.857})
        sim.setObjectPosition(dummyHandleDOWN,base,{0,0,-(heightOfBase/2.857)})
        sim.setObjectOrientation(dummyHandleDOWN,dummyHandleUP,{math.pi,0,0})
        sim.setObjectParent(masses[0],base,true)

        for i=1,numberOfCuboid-1,1 do
            sim.setObjectParent(masses[i],masses[i-1],true)
        end

        objects[j]=sim.getObjectsInTree(base,sim.handle_all,0)

        base=sim.groupShapes(objects[j])
            
        sim.setObjectParent(meshHandle[j],base,true)
        sim.setObjectParent(dummyHandleUP,base,true)
        sim.setObjectParent(dummyHandleDOWN,base,true)
        if objects then
            done=1
        end
          
    end

    if done==1 then
        sim.setScriptSimulationParameter(childScriptHandle,'generationDone',1)
    end 

    return h,done
            
end

function userInterface.closureGenerationRectangular1(bigDiameter,smallDiameter,numberOfCuboid,heightOfBase,heightOfCylinder,numberOfClosures,xBoxDimension,count,layersNumber,closurePath)
   
    local cuttingStationHandle=sim.getObjectHandle('cuttingStation')
    local dummyCuttingStationHandle=sim.getObjectHandle('cuttingStationDummy')
    local childScriptHandle=sim.getScriptAssociatedWithObject(model)
    local bigCircumference=math.pi*bigDiameter
    local cuboidLenght=bigCircumference/numberOfCuboid
    local stepCuboid=2*math.pi/numberOfCuboid
    local masses={}
    local objects={}
    local h=1
    local elementsPerRows=math.floor(xBoxDimension/(bigDiameter+0.05))
    local k=count%elementsPerRows
    local h=math.floor(count/elementsPerRows)
    local vertices={}
    local indices={}
    local meshHandle={}

    sim.setObjectPosition(dummyCuttingStationHandle,cuttingStationHandle,{0,0,heightOfBase/2+heightOfCylinder+0.025})

    for j=1,numberOfClosures,1 do
        local dummyHandleUP=sim.createDummy(0.005,nil)
        local dummyHandleDOWN=sim.createDummy(0.005,nil)
        base=sim.createPureShape(2,10,{bigDiameter,bigDiameter,heightOfBase},0.01,nil)
        sim.setObjectPosition(base,-1,{k*(bigDiameter+0.015)-0.75,h*(bigDiameter+0.01)+0.32,(heightOfBase+heightOfCylinder)*layersNumber+0.1})--Ho tolto 0.1 nella Z per provare, sarebbe
        sim.setShapeColor(base,nil,sim.colorcomponent_ambient_diffuse,{0,50,230})                                                             --da mettere al posto di -0.75 e 0.32 i valori 
        sim.setObjectInt32Parameter(base,10,256)                                                                                              --della posizione e della dimensione del box
        --sim.setObjectSpecialProperty(base,sim.objectspecialproperty_detectable_all+sim.objectspecialproperty_renderable+sim.objectspecialproperty_collidable+sim.objectspecialproperty_measurable)
        
        k=k+1

        if k==elementsPerRows then
            h=h+1
            k=0
        end
        for i=0,numberOfCuboid-1,1 do
            masses[i]=sim.createPureShape(0,10,{cuboidLenght,heightOfBase/10,heightOfCylinder},0.005,nil)
            sim.setShapeColor(masses[i],nil,sim.colorcomponent_ambient_diffuse,{0,0,230})
            sim.setObjectPosition(masses[i],base,{(bigDiameter-heightOfBase/10)/2*math.cos(stepCuboid*i+(math.pi/2)),(bigDiameter-heightOfBase/10)/2*math.sin(stepCuboid*i+(math.pi/2)),-heightOfBase})
            sim.setObjectOrientation(masses[i],base,{0,0,stepCuboid*i})
            sim.setObjectInt32Parameter(masses[i],10,256)
            --sim.setObjectSpecialProperty(masses[i],sim.objectspecialproperty_detectable_all+sim.objectspecialproperty_renderable+sim.objectspecialproperty_collidable+sim.objectspecialproperty_measurable)
        end

            vertices,indices=sim.importMesh(0,closurePath,1,0,0.00169595)
            for i=1,#vertices,1 do
                meshHandle[j]=sim.createMeshShape(1,0,vertices[i],indices[i])
            end
                
        sim.setShapeColor(meshHandle[j],'',sim.colorcomponent_ambient,{0.5,0.5,0.5})
        sim.setObjectOrientation(meshHandle[j],-1,{0,math.pi/2,0})
        sim.setObjectPosition(meshHandle[j],base,{0,0,-0.00645})
        sim.setObjectPosition(dummyHandleUP,base,{0,0,heightOfBase/2.857})
        sim.setObjectPosition(dummyHandleDOWN,base,{0,0,-(heightOfBase/2.857)})
        sim.setObjectOrientation(dummyHandleDOWN,dummyHandleUP,{math.pi,0,0})
        sim.setObjectParent(masses[0],base,true)

        for i=1,numberOfCuboid-1,1 do
            sim.setObjectParent(masses[i],masses[i-1],true)
        end

        objects[j]=sim.getObjectsInTree(base,sim.handle_all,0)

        base=sim.groupShapes(objects[j])
            
        sim.setObjectParent(meshHandle[j],base,true)
        sim.setObjectParent(dummyHandleUP,base,true)
        sim.setObjectParent(dummyHandleDOWN,base,true)
        if objects then
            done=1
         end     
    end

    if done==1 then
        sim.setScriptSimulationParameter(childScriptHandle,'generationDone',1)
        sim.setScriptSimulationParameter(childScriptHandle,'childStep',2)
    end 

    return h,done
            
end

function userInterface.closureGenerationRectangular2(bigDiameter,numberOfCuboid,heightOfBase,heightOfCylinder,numberOfClosures,xBoxDimension,count,layersNumber)
   
    local childScriptHandle=sim.getScriptAssociatedWithObject(model)
    local controlPlatformDummyUp=sim.getObjectHandle('controlPlatformUp')
    local controlPlatformDummyDown=sim.getObjectHandle('controlPlatformDown')
    local cuboidControlPlatformHandle=sim.getObjectHandle('CuboidControlPlatform')
    local cuttingStationHandle=sim.getObjectHandle('cuttingStation')
    local dummyCuttingStationHandle=sim.getObjectHandle('cuttingStationDummy')
    local bigCircumference=math.pi*bigDiameter
    local cuboidLenght=bigCircumference/numberOfCuboid
    local stepCuboid=2*math.pi/numberOfCuboid
    local masses={}
    local objects={}
    local h=1
    local elementsPerRows=math.floor(xBoxDimension/(bigDiameter+0.05))
    local k=count%elementsPerRows
    local h=math.floor(count/elementsPerRows)
    local vertices={}
    local indices={}
    local meshHandle={}

    sim.setObjectPosition(dummyCuttingStationHandle,cuttingStationHandle,{0,0,heightOfBase/2+heightOfCylinder+0.025})
    sim.setObjectPosition(controlPlatformDummyUp,cuboidControlPlatformHandle,{0,0,heightOfBase+heightOfCylinder+0.025})--l'altezza adel controlPlatformDummyUp va anche moltiplicata per il numero di tappi che vengono scartati
    --sim.setObjectPosition(controlPlatformDummyDown,cuboidControlPlatformHandle,{0,0,heightOfCylinder+0.025})--Quindi la funzione prenderà un altro parametro che è il numero di tappi appunto che va settato a uno prima 
                                                                                                              --di entrare appunto in questa funzione.
    for j=1,numberOfClosures,1 do
        local dummyHandleUP=sim.createDummy(0.005,nil)
        local dummyHandleDOWN=sim.createDummy(0.005,nil)
        base=sim.createPureShape(2,10,{bigDiameter,bigDiameter,heightOfBase},0.01,nil)
        sim.setObjectPosition(base,-1,{k*(bigDiameter+0.015)-0.75,h*(bigDiameter+0.01)+0.32,(heightOfBase+heightOfCylinder)*layersNumber+0.1})--Ho tolto 0.1 nella Z per provare, sarebbe
        sim.setShapeColor(base,nil,sim.colorcomponent_ambient_diffuse,{0,50,230})                                                             --da mettere al posto di -0.75 e 0.32 i valori 
        --sim.setObjectInt32Parameter(base,10,256)                                                                                              --della posizione e della dimensione del box
        sim.setObjectSpecialProperty(base,sim.objectspecialproperty_detectable_all+sim.objectspecialproperty_renderable+sim.objectspecialproperty_collidable+sim.objectspecialproperty_measurable)
        
        k=k+1

        if k==elementsPerRows then
            h=h+1
            k=0
        end
        for i=0,numberOfCuboid-1,1 do
            masses[i]=sim.createPureShape(0,10,{cuboidLenght,heightOfBase/10,heightOfCylinder},0.005,nil)
            sim.setShapeColor(masses[i],nil,sim.colorcomponent_ambient_diffuse,{0,0,230})
            sim.setObjectPosition(masses[i],base,{(bigDiameter-heightOfBase/10)/2*math.cos(stepCuboid*i+(math.pi/2)),(bigDiameter-heightOfBase/10)/2*math.sin(stepCuboid*i+(math.pi/2)),-(heightOfBase+heightOfCylinder-((heightOfBase+heightOfCylinder)/2))})
            sim.setObjectOrientation(masses[i],base,{0,0,stepCuboid*i})
            --sim.setObjectInt32Parameter(masses[i],10,256)
            sim.setObjectSpecialProperty(masses[i],sim.objectspecialproperty_detectable_all+sim.objectspecialproperty_renderable+sim.objectspecialproperty_collidable+sim.objectspecialproperty_measurable)
        end

        sim.setObjectPosition(dummyHandleUP,base,{0,0,heightOfBase/2.857})
        sim.setObjectPosition(dummyHandleDOWN,base,{0,0,-(heightOfBase/2.857)})
        sim.setObjectOrientation(dummyHandleDOWN,dummyHandleUP,{math.pi,0,0})
        sim.setObjectParent(masses[0],base,true)

        for i=1,numberOfCuboid-1,1 do
            sim.setObjectParent(masses[i],masses[i-1],true)
        end

        objects[j]=sim.getObjectsInTree(base,sim.handle_all,0)

        base=sim.groupShapes(objects[j])
        sim.setObjectParent(dummyHandleUP,base,true)
        sim.setObjectParent(dummyHandleDOWN,base,true)
        if objects then
            done=1
         end     
    end

    if done==1 then
        sim.setScriptSimulationParameter(childScriptHandle,'generationDone',1)
        sim.setScriptSimulationParameter(childScriptHandle,'childStep',1)
    end 

    return h,done
            
end

function userInterface.closureGenerationRectangularConfused(bigDiameter,smallDiameter,numberOfcuboid,heightOfBase,heightOfCylinder,numberOfClosures,xBoxDimension,count,layersNumber,numberOfPath)
   
    local mediumDiameter=(bigDiameter+smallDiameter)/2-0.001
    local bigCircumference=math.pi*bigDiameter
    local smallCircumference=math.pi*smallDiameter
    local cuboidLenght=bigCircumference/numberOfCuboid
    local stepCuboid=2*math.pi/numberOfCuboid
    local masses={}
    local objects={}
    local h=1
    local elementsPerRows=math.floor(xBoxDimension/(bigDiameter+0.05))
    local k=count%elementsPerRows
    local h=math.floor(count/elementsPerRows)
    local vertices={}
    local indices={}
    local meshHandle={}

    local str1=[[C:\\Users\\edoar\\Desktop\\University\\Magistrale\\TirocinioSacmi\\I__disegni_capsule_3d_formato_STL\\AB26CSD11-A8705\\AB26CSD11-A8705.STL]]
    local str2=[[C:\\Users\\edoar\\Desktop\\University\\Magistrale\\TirocinioSacmi\\I__disegni_capsule_3d_formato_STL\\AB29W36-A8725\\AB29W36-A8725.STL]]
    local str3=[[C:\\Users\\edoar\\Desktop\\University\\Magistrale\\TirocinioSacmi\\I__disegni_capsule_3d_formato_STL\\AB38HF7-A8723\\AB38HF7-A8723.STL]]
    local str4=[[C:\\Users\\edoar\\Desktop\\University\\Magistrale\\TirocinioSacmi\\I__disegni_capsule_3d_formato_STL\\AB1881CSD32-A8695\\AB1881CSD32-A8695.STL]]    
    local path

    if numberOfPath==1 then
        path=str1
    elseif numberOfPath==2 then
        path=str2
    elseif numberOfPath==3 then
        path=str3
    elseif numberOfPath==4 then
        path=str4
    end

    for j=0,numberOfClosures-1,1 do
        
        base=sim.createPureShape(2,10,{bigDiameter,bigDiameter,heightOfBase},0.01,nil)
        
        sim.setObjectPosition(base,-1,{-0.7*k*(bigDiameter+0.015)-0.25,0.7*h*(bigDiameter+0.01)-0.25,0.1+(heightOfBase+heightOfCylinder)*layersNumber*k})
        sim.setShapeColor(base,nil,sim.colorcomponent_ambient_diffuse,{0,50,230})
        sim.setObjectInt32Parameter(base,10,256)
        sim.setObjectSpecialProperty(base,sim.objectspecialproperty_detectable_all+sim.objectspecialproperty_renderable+sim.objectspecialproperty_collidable+sim.objectspecialproperty_measurable)
        
        k=k+1

        if k==elementsPerRows then
            h=h+1
            k=0
        end
        for i=0,numberOfCuboid-1,1 do
            masses[i]=sim.createPureShape(0,10,{cuboidLenght,heightOfBase/10,heightOfCylinder},0.005,nil)
            sim.setShapeColor(masses[i],nil,sim.colorcomponent_ambient_diffuse,{0,0,230})
            sim.setObjectPosition(masses[i],base,{(bigDiameter-heightOfBase/10)/2*math.cos(stepCuboid*i+(math.pi/2)),(bigDiameter-heightOfBase/10)/2*math.sin(stepCuboid*i+(math.pi/2)),-heightOfBase})
            sim.setObjectOrientation(masses[i],base,{0,0,stepCuboid*i})
            sim.setObjectInt32Parameter(masses[i],10,256)
            sim.setObjectSpecialProperty(masses[i],sim.objectspecialproperty_detectable_all+sim.objectspecialproperty_renderable+sim.objectspecialproperty_collidable+sim.objectspecialproperty_measurable)
        end

        vertices,indices=sim.importMesh(0,path,1,0,0.00169595)
        for i=1,#vertices,1 do
            meshHandle[j]=sim.createMeshShape(1,0,vertices[i],indices[i])
        end
            
        sim.setShapeColor(meshHandle[j],'',sim.colorcomponent_ambient,{0.88,0.88,0.88})
        sim.setObjectOrientation(meshHandle[j],-1,{0,math.pi/2,0})
        sim.setObjectPosition(meshHandle[j],base,{0,0,-0.00645})

        sim.setObjectParent(masses[0],base,true)

        for i=1,numberOfCuboid-1,1 do
            sim.setObjectParent(masses[i],masses[i-1],true)
        end
            
        objects[j]=sim.getObjectsInTree(base,sim.handle_all,0)

        base=sim.groupShapes(objects[j])
            
        sim.setObjectParent(meshHandle[j],base,true)

            if objects then
                done=1
            end     
    end
 
    return h,done
            
end

function userInterface.closureStructureInformation(scriptHandle,objectHandle)
    
    local randomID=math.random(1,48)
    local randomGoodness=math.random(1,100)
    local randomOrientation=math.random(1,100)
    local str=[[function sysCall_init()
    local id=]]
    local str2=[[ 
    local goodness=]]
    local str3=[[ 
    local t={]]
    local str4=[[,]]
    local str5=[[}
    local data=sim.packFloatTable(t)
    sim.setStringSignal('myData]]
    local str6=[[',data)
end]]
    sim.setScriptText(scriptHandle,str..randomID..str2..randomGoodness..str3..randomID..str4..randomGoodness..str5..objectHandle..str6)--Generazione randomica dell'ID dei tappi, prima veniva fatta con Counter, in cui alla funzione veniva
    --passato anche un counter, ovvero j alla funzione oltre che scriptHandle[j] e closureHandle[j] quindi (scriptHandle[j],closureHandle[j],j) e in questa funzione c'era  userInterface.closureStructureInformation(scriptHandle,objectHandle,counter)
    --in cui al posto di randomID c'era counter
end

function userInterface.readClosureStrucureInformation(objectHandle,spotlightHandle,spotlightScriptHandle)
 
    -- spotlightHandle=sim.getObjectHandle('Spotlight')
    -- spotlightScriptHandle=sim.getScriptAssociatedWithObject(spotlightHandle)

    readyToPick=sim.getScriptSimulationParameter(spotlightScriptHandle,'readyToPick')
    local unpackedData
    if readyToPick==1 then
        str1=tostring(objectHandle)
        local data=sim.getStringSignal('myData'..str1)
        unpackedData=sim.unpackFloatTable(data)
        print('myData'..str1)
    end
    
    return unpackedData
end

function userInterface.readPositions()
    
    dataReady=sim.getScriptSimulationParameter(spotlightScriptHandle,'dataReady')
    local unpackedData

    if dataReady==1 then

        local dataPositions=sim.getStringSignal('positions')
        unpackedData=sim.unpackFloatTable(dataPositions)
        
    end
    
    return unpackedData

end

function userInterface.readDimensions()

    dataReady=sim.getScriptSimulationParameter(spotlightScriptHandle,'dataReady')
    local unpackedData

    if dataReady==1 then

        local datadimension=sim.getStringSignal('dimensionsClosure')
        unpackedData=sim.unpackFloatTable(datadimension)

        

    end

    return unpackedData

end

return userInterface