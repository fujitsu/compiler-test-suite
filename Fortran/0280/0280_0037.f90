REAL (KIND=2) :: R(3),R1(3)
COMPLEX (KIND=2) :: C(2),C1(2)
R=[1.0_2,5.0_2,6.0_2]
R1=[1.0_2,6.0_2,7.0_2]
C=[(1.0_2,1.0_2),(2.0_2,2.0_2)]
C1=[(2.0_2,2.0_2),(2.0_2,2.0_2)]
FORALL (I=1:3,R(I)>3.0_2)
 R(I)=R(I)+1.0_2
END FORALL
FORALL (I=1:2,C(I) .NE. (2.0_2,2.0_2))
 C(I)=C(I)+(1.0_2,1.0_2)
END FORALL
IF (R(1) /= R1(1)) PRINT*,'101'
IF (R(2) /= R1(2)) PRINT*,'102'
IF (R(3) /= R1(3)) PRINT*,'103'
IF (C(1) /= C1(1)) PRINT*,'104'
IF (C(2) /= C1(2)) PRINT*,'105'
PRINT *,'PASS'
END
