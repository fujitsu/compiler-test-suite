COMPLEX(KIND=2),PARAMETER::C4_1(2,1:0)=RESHAPE([(1.5_2,2.5_2),(1.5_2,2.5_2)],[2,0])
COMPLEX(KIND=2),PARAMETER::C4_2(1:0,2)=RESHAPE([(3.5_2,4.5_2),(1.5_2,2.5_2)],[0,2])
COMPLEX(KIND=2),PARAMETER::RES(2,2)=MATMUL(C4_1,C4_2)
COMPLEX::C8(2,2)
C8=RES
IF(ANY(C8 /=RESHAPE([(0.0,0.0),(0.0,0.0),(0.0,0.0),(0.0,0.0)],[2,2])))PRINT*,"101"
PRINT*,"PASS"
END