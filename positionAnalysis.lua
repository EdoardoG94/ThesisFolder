local positionAnalysis = {}

utility = require('utilityLibrary')

function positionAnalysis.firstPosition(sensorDummy,dummyClosureHandle,tipDummy,targetDummy,closureDimension)

    local T_W_VS=sim.getObjectMatrix(sensorDummy,-1)
    local T_W_VSShifted=utility.getMatrixShiftedAlongZ(T_W_VS,0.038)--E' anche da ruotare rispetto a Y
    local T_W_VSShiftedR=utility.rotateMatrixAlongY(T_W_VSShifted,-math.pi/2)
    local T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    local T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)
    
    local T_H_P=utility.getMatrixShiftedAlongY(T_W_Clo,closureDimension[3]/2+0.001)--defisco la matrice del mio punto di interesse

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    local path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedR,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    T_H_P=utility.getMatrixShiftedAlongY(T_W_Clo,-closureDimension[3]/2-0.001)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedR,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    T_H_P=utility.getMatrixShiftedAlongX(T_W_Clo,closureDimension[3]/2+0.001)
    T_W_VSShiftedR=utility.rotateMatrixAlongZ(T_W_VSShiftedR,math.pi/2)--Giro la matrice per gli ultimi due punti

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedR,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    T_H_P=utility.getMatrixShiftedAlongX(T_W_Clo,-closureDimension[3]/2-0.001)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedR,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

end

function positionAnalysis.secondPosition(sensorDummy,dummyClosureHandle,tipDummy,targetDummy,closureDimension)

    local T_W_VS=sim.getObjectMatrix(sensorDummy,-1)
    local T_W_VSShifted=utility.getMatrixShiftedAlongZ(T_W_VS,0.038)--E' anche da ruotare rispetto a Y
    local T_W_VSShiftedR=utility.rotateMatrixAlongY(T_W_VSShifted,-math.pi/2)
    local T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    local T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)
    
    local T_H_P=utility.getMatrixShiftedAlongY(T_W_Clo,closureDimension[3]/2-closureDimension[1]/3)--defisco la matrice del mio punto di interesse
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[1]/2)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    local path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedR,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    T_H_P=utility.getMatrixShiftedAlongY(T_W_Clo,-closureDimension[3]/2+closureDimension[1]/3)
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[1]/2)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedR,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    T_H_P=utility.getMatrixShiftedAlongX(T_W_Clo,closureDimension[3]/2-closureDimension[1]/3)
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[1]/2)
    T_W_VSShiftedR=utility.rotateMatrixAlongZ(T_W_VSShiftedR,math.pi/2)--Giro la matrice per gli ultimi due punti

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedR,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    T_H_P=utility.getMatrixShiftedAlongX(T_W_Clo,-closureDimension[3]/2+closureDimension[1]/3)
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[1]/2)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedR,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

end

function positionAnalysis.thirdPosition(sensorDummy,dummyClosureHandle,tipDummy,targetDummy,closureDimension)

    local T_W_VS=sim.getObjectMatrix(sensorDummy,-1)
    local T_W_VSShifted=utility.getMatrixShiftedAlongZ(T_W_VS,0.038)
    local T_W_VSShiftedR=utility.rotateMatrixAlongY(T_W_VSShifted,-math.pi/2)
    local T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    local T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)
    
    local T_H_P=utility.getMatrixShiftedAlongY(T_W_Clo,closureDimension[3]/2-closureDimension[1]/3)--defisco la matrice del mio punto di interesse
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[1]/2)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    local T_W_VSShiftedR1=utility.rotateMatrixAlongZ(T_W_VSShiftedR,-math.pi/6)
    
    local path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedR1,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    T_H_P=utility.getMatrixShiftedAlongY(T_W_Clo,-closureDimension[3]/2+closureDimension[1]/3)
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[1]/2)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    local T_W_VSShiftedR2=utility.rotateMatrixAlongZ(T_W_VSShiftedR,math.pi/6)

    path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedR2,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    T_H_P=utility.getMatrixShiftedAlongX(T_W_Clo,closureDimension[3]/2-closureDimension[1]/3)
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[1]/2)

    local T_W_VSShiftedR3=utility.rotateMatrixAlongZ(T_W_VSShiftedR,-math.pi/3)
    T_W_VSShiftedR=utility.rotateMatrixAlongZ(T_W_VSShiftedR,math.pi/2)--Giro la matrice per gli ultimi due punti
    

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedR3,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    T_H_P=utility.getMatrixShiftedAlongX(T_W_Clo,-closureDimension[3]/2+closureDimension[1]/3)
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[1]/2)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    local T_W_VSShiftedR=utility.rotateMatrixAlongZ(T_W_VSShiftedR,math.pi/6)

    path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedR,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

end

function positionAnalysis.fourthPosition(sensorDummy,dummyClosureHandle,tipDummy,targetDummy,closureDimension)

    local T_W_VS=sim.getObjectMatrix(sensorDummy,-1)
    local T_W_VSShifted=utility.getMatrixShiftedAlongZ(T_W_VS,0.038)
    local T_W_VSShiftedR=utility.rotateMatrixAlongY(T_W_VSShifted,-math.pi/2)
    local T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    local T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    local T_H_P=utility.getMatrixShiftedAlongY(T_W_Clo,closureDimension[3]/2+0.001)--defisco la matrice del mio punto di interesse ALZARE ANCHE LA MATRICE DI S/2
    T_H_P=utility.rotateMatrixAlongZ(T_H_P,-math.pi/2)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    local path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedR,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    local T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    local T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    T_H_P=utility.getMatrixShiftedAlongY(T_W_Clo,-closureDimension[3]/2-0.001)
    T_H_P=utility.rotateMatrixAlongZ(T_H_P,math.pi/2)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedR,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    T_H_P=utility.getMatrixShiftedAlongX(T_W_Clo,closureDimension[3]/2+0.001)
    T_H_P=utility.rotateMatrixAlongZ(T_H_P,math.pi)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedR,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    T_H_P=utility.getMatrixShiftedAlongX(T_W_Clo,closureDimension[3]/2-0.001)
    T_H_P=utility.rotateMatrixAlongZ(T_H_P,math.pi)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedR,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

end

function positionAnalysis.fifthPosition(sensorDummy,dummyClosureHandle,tipDummy,targetDummy,closureDimension)

    local T_W_VS=sim.getObjectMatrix(sensorDummy,-1)
    local T_W_VSShifted=utility.getMatrixShiftedAlongZ(T_W_VS,0.05)
    local T_W_VSShiftedR=utility.rotateMatrixAlongY(T_W_VSShifted,math.pi/180*25)
    local T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    local T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    local T_H_P=utility.getMatrixShiftedAlongX(T_W_Clo,-closureDimension[3]/2+0.001)
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[6])

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    local path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedR,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    T_H_P=utility.getMatrixShiftedAlongX(T_W_Clo,closureDimension[3]/2-0.001)
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[6])
    T_W_VSShiftedR1=utility.rotateMatrixAlongZ(T_W_VSShiftedR,math.pi)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedR1,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    T_H_P=utility.getMatrixShiftedAlongY(T_W_Clo,closureDimension[3]/2-0.001)
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[6])
    T_W_VSShiftedR2=utility.rotateMatrixAlongZ(T_W_VSShiftedR,math.pi/2)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedR2,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    T_H_P=utility.getMatrixShiftedAlongY(T_W_Clo,-closureDimension[3]/2+0.001)
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[6])
    T_W_VSShiftedR3=utility.rotateMatrixAlongZ(T_W_VSShiftedR2,math.pi)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedR3,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

end

function positionAnalysis.sixthPosition(sensorDummy,dummyClosureHandle,tipDummy,targetDummy,closureDimension)
    
    local T_W_VS=sim.getObjectMatrix(sensorDummy,-1)
    local T_W_VSShifted=utility.getMatrixShiftedAlongZ(T_W_VS,0.05)
    local T_W_VSShiftedR=utility.rotateMatrixAlongY(T_W_VSShifted,math.pi/180*25)
    local T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    local T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    local T_H_P=utility.getMatrixShiftedAlongX(T_W_Clo,-closureDimension[3]/2+0.001)
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[6])

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    local path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedR,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    T_H_P=utility.getMatrixShiftedAlongX(T_W_Clo,closureDimension[3]/2-0.001)
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[6])
    T_W_VSShiftedR1=utility.rotateMatrixAlongZ(T_W_VSShiftedR,math.pi)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedR1,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    T_H_P=utility.getMatrixShiftedAlongY(T_W_Clo,closureDimension[3]/2-0.001)
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[6])
    T_W_VSShiftedR2=utility.rotateMatrixAlongZ(T_W_VSShiftedR,math.pi/2)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedR2,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    T_H_P=utility.getMatrixShiftedAlongY(T_W_Clo,-closureDimension[3]/2+0.001)
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[6])
    T_W_VSShiftedR3=utility.rotateMatrixAlongZ(T_W_VSShiftedR2,math.pi)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedR3,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

end

function positionAnalysis.seventhPosition(sensorDummy,dummyClosureHandle,tipDummy,targetDummy,closureDimension)

    local T_W_VS=sim.getObjectMatrix(sensorDummy,-1)
    local T_W_VSShifted=utility.getMatrixShiftedAlongZ(T_W_VS,0.05)
    local T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    local T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    local T_H_P=utility.getMatrixShiftedAlongX(T_W_Clo,-closureDimension[3]/2)
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[6])

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    local path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShifted,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    local T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    local T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    local T_H_P=utility.getMatrixShiftedAlongX(T_W_Clo,closureDimension[3]/2)
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[6])

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    local path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShifted,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    local T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    local T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    local T_H_P=utility.getMatrixShiftedAlongY(T_W_Clo,-closureDimension[3]/2)
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[6])

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    local path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShifted,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    local T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    local T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    local T_H_P=utility.getMatrixShiftedAlongY(T_W_Clo,closureDimension[3]/2)
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[6])

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    local path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShifted,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

end

function positionAnalysis.eighthPosition(sensorDummy,dummyClosureHandle,tipDummy,targetDummy,closureDimension)

    local T_W_VS=sim.getObjectMatrix(sensorDummy,-1)
    local T_W_VSShifted=utility.getMatrixShiftedAlongZ(T_W_VS,0.05)
    local T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    local T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    local T_H_P=utility.getMatrixShiftedAlongX(T_W_Clo,-closureDimension[3]/2)
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[6])

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    local path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShifted,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    local T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    local T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    local T_H_P=utility.getMatrixShiftedAlongX(T_W_Clo,closureDimension[3]/2)
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[6])

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    local path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShifted,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    local T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    local T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    local T_H_P=utility.getMatrixShiftedAlongY(T_W_Clo,-closureDimension[3]/2)
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[6])

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    local path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShifted,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    local T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    local T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    local T_H_P=utility.getMatrixShiftedAlongY(T_W_Clo,closureDimension[3]/2)
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[6])

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    local path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShifted,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

end

function positionAnalysis.ninthPosition(sensorDummy,dummyClosureHandle,tipDummy,targetDummy,closureDimension)

    local T_W_VS=sim.getObjectMatrix(sensorDummy,-1)
    local T_W_VSShifted=utility.getMatrixShiftedAlongZ(T_W_VS,0.038)--E' anche da ruotare rispetto a Y
    local T_W_VSShiftedR=utility.rotateMatrixAlongY(T_W_VSShifted,-math.pi/2)
    local T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    local T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)
    
    local T_H_P=utility.getMatrixShiftedAlongY(T_W_Clo,closureDimension[3]/2-closureDimension[1]/3)--defisco la matrice del mio punto di interesse
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[1]/2)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    local path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedR,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    T_H_P=utility.getMatrixShiftedAlongY(T_W_Clo,-closureDimension[3]/2+closureDimension[1]/3)
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[1]/2)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedR,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

end

function positionAnalysis.tenthPosition(sensorDummy,dummyClosureHandle,tipDummy,targetDummy,closureDimension)

    local T_W_VS=sim.getObjectMatrix(sensorDummy,-1)
    local T_W_VSShifted=utility.getMatrixShiftedAlongZ(T_W_VS,0.05)--E' anche da ruotare rispetto a Y
    local T_W_VSShiftedR=utility.rotateMatrixAlongY(T_W_VSShifted,math.pi/180*25)
    local T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    local T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    local T_H_P=utility.getMatrixShiftedAlongX(T_W_Clo,-closureDimension[3]/2)
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[1]/2)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    local path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedR,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    T_H_P=utility.getMatrixShiftedAlongX(T_W_Clo,-closureDimension[3]/2*math.cos(math.pi/4))
    T_H_P=utility.getMatrixShiftedAlongY(T_H_P,-closureDimension[3]/2*math.sin(math.pi/4))
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[1]/2)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)
    local T_W_VSShiftedR1=utility.rotateMatrixAlongZ(T_W_VSShiftedR,-math.pi/4)

    path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedR1,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    T_H_P=utility.getMatrixShiftedAlongY(T_W_Clo,-closureDimension[3]/2)
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[1]/2)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)
    local T_W_VSShiftedR2=utility.rotateMatrixAlongZ(T_W_VSShiftedR,-math.pi/2)

    path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedR2,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    T_H_P=utility.getMatrixShiftedAlongX(T_W_Clo,closureDimension[3]/2*math.cos(math.pi/4))
    T_H_P=utility.getMatrixShiftedAlongY(T_H_P,-closureDimension[3]/2*math.sin(math.pi/4))
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[1]/2)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)
    local T_W_VSShiftedR3=utility.rotateMatrixAlongZ(T_W_VSShiftedR,-math.pi*3/4)

    path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedR3,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    T_H_P=utility.getMatrixShiftedAlongX(T_W_Clo,closureDimension[3]/2)
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[1]/2)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)
    local T_W_VSShiftedR4=utility.rotateMatrixAlongZ(T_W_VSShiftedR,-math.pi)

    path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedR4,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    T_H_P=utility.getMatrixShiftedAlongX(T_W_Clo,closureDimension[3]/2*math.cos(math.pi/4))
    T_H_P=utility.getMatrixShiftedAlongY(T_H_P,closureDimension[3]/2*math.sin(math.pi/4))
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[1]/2)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)
    local T_W_VSShiftedR5=utility.rotateMatrixAlongZ(T_W_VSShiftedR,-math.pi*5/4)

    path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedR5,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    T_H_P=utility.getMatrixShiftedAlongY(T_W_Clo,closureDimension[3]/2)
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[1]/2)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)
    local T_W_VSShiftedR6=utility.rotateMatrixAlongZ(T_W_VSShiftedR,-math.pi*3/2)

    path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedR6,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    T_H_P=utility.getMatrixShiftedAlongX(T_W_Clo,-closureDimension[3]/2*math.cos(math.pi/4))
    T_H_P=utility.getMatrixShiftedAlongY(T_H_P,closureDimension[3]/2*math.sin(math.pi/4))
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[1]/2)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)
    local T_W_VSShiftedR7=utility.rotateMatrixAlongZ(T_W_VSShiftedR,-math.pi*7/4)

    path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedR7,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)
    local T_W_VSShiftedRF=utility.rotateMatrixAlongY(T_W_VSShifted,-math.pi/2)

    T_H_P=utility.getMatrixShiftedAlongX(T_W_Clo,-closureDimension[3]/2)--defisco la matrice del mio punto di interesse

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedRF,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    T_H_P=utility.getMatrixShiftedAlongX(T_W_Clo,-closureDimension[3]/2*math.cos(math.pi/4))
    T_H_P=utility.getMatrixShiftedAlongY(T_H_P,-closureDimension[3]/2*math.sin(math.pi/4))
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[1]/2)
    T_H_P=utility.rotateMatrixAlongZ(T_H_P,math.pi/4)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedRF,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    T_H_P=utility.getMatrixShiftedAlongY(T_W_Clo,-closureDimension[3]/2)
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[1]/2)
    T_H_P=utility.rotateMatrixAlongZ(T_H_P,math.pi/2)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedRF,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)
    
    T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    T_H_P=utility.getMatrixShiftedAlongX(T_W_Clo,closureDimension[3]/2*math.cos(math.pi/4))
    T_H_P=utility.getMatrixShiftedAlongY(T_H_P,-closureDimension[3]/2*math.sin(math.pi/4))
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[1]/2)
    T_H_P=utility.rotateMatrixAlongZ(T_H_P,math.pi*3/4)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedRF,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    T_H_P=utility.getMatrixShiftedAlongX(T_W_Clo,closureDimension[3]/2)
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[1]/2)
    T_H_P=utility.rotateMatrixAlongZ(T_H_P,math.pi)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedRF,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)
    
    T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    T_H_P=utility.getMatrixShiftedAlongX(T_W_Clo,closureDimension[3]/2*math.cos(math.pi/4))
    T_H_P=utility.getMatrixShiftedAlongY(T_H_P,closureDimension[3]/2*math.sin(math.pi/4))
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[1]/2)
    T_H_P=utility.rotateMatrixAlongZ(T_H_P,math.pi*5/4)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedRF,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    T_H_P=utility.getMatrixShiftedAlongY(T_W_Clo,closureDimension[3]/2)
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[1]/2)
    T_H_P=utility.rotateMatrixAlongZ(T_H_P,math.pi*3/2)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedRF,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    T_H_P=utility.getMatrixShiftedAlongX(T_W_Clo,-closureDimension[3]/2*math.cos(math.pi/4))
    T_H_P=utility.getMatrixShiftedAlongY(T_H_P,closureDimension[3]/2*math.sin(math.pi/4))
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[1]/2)
    T_H_P=utility.rotateMatrixAlongZ(T_H_P,math.pi*7/4)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedRF,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

end

function positionAnalysis.eleventhPosition(sensorDummy,dummyClosureHandle,tipDummy,targetDummy,closureDimension)

    local T_W_VS=sim.getObjectMatrix(sensorDummy,-1)
    local T_W_VSShifted=utility.getMatrixShiftedAlongZ(T_W_VS,0.038)--E' anche da ruotare rispetto a Y
    local T_W_VSShiftedR=utility.rotateMatrixAlongY(T_W_VSShifted,-math.pi/2)
    local T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    local T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)
    
    local T_H_P=utility.getMatrixShiftedAlongY(T_W_Clo,closureDimension[3]/2-closureDimension[1]/3)--defisco la matrice del mio punto di interesse
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[1]/2)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    local path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedR,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

    T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    T_H_P=utility.getMatrixShiftedAlongY(T_W_Clo,-closureDimension[3]/2+closureDimension[1]/3)
    T_H_P=utility.getMatrixShiftedAlongZ(T_H_P,-closureDimension[1]/2)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedR,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

end

function positionAnalysis.twelfthPosition(sensorDummy,dummyClosureHandle,tipDummy,targetDummy,closureDimension)

    local T_W_VS=sim.getObjectMatrix(sensorDummy,-1)
    local T_W_VSShifted=utility.getMatrixShiftedAlongZ(T_W_VS,0.038)--E' anche da ruotare rispetto a Y
    local T_W_VSShiftedR=utility.rotateMatrixAlongY(T_W_VSShifted,-math.pi/2)
    local T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    local T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    local T_H_P=utility.getMatrixShiftedAlongZ(T_W_Clo,closureDimension[1]/2)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    local path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedR,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

end

function positionAnalysis.thirtheenthPosition(sensorDummy,dummyClosureHandle,tipDummy,targetDummy,closureDimension)

    local T_W_VS=sim.getObjectMatrix(sensorDummy,-1)
    local T_W_VSShifted=utility.getMatrixShiftedAlongZ(T_W_VS,0.038)--E' anche da ruotare rispetto a Y
    local T_W_VSShiftedR=utility.rotateMatrixAlongY(T_W_VSShifted,-math.pi/2)
    local T_VS_Clo=sim.getObjectMatrix(dummyClosureHandle,sensorDummy)
    local T_W_Clo=sim.multiplyMatrices(T_W_VS,T_VS_Clo)

    local T_H_P=utility.getMatrixShiftedAlongZ(T_W_Clo,closureDimension[1]/2)

    sim.setObjectMatrix(tipDummy,-1,T_H_P)
    sim.setObjectMatrix(targetDummy,-1,T_H_P)

    local path=utility.generate2PointsPathDiffTarget(T_H_P,T_W_VSShiftedR,targetDummy,1,0,0,0.2,0.2,0,0,0,0.2,0.2)

end

return positionAnalysis