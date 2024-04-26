 REAL (KIND=2) :: R(3)
 COMPLEX (KIND=2) :: C(2)
 REAL (KIND=2) :: RR(3,3)
 COMPLEX (KIND=2) :: CC(2,2)
 DATA (R(I),I=1,3) /3*1.0_2/
 DATA ((RR(I,J),I=1,3),J=1,3) /9*1.0_2/
 DATA (C(I),I=1,2) /(1.0_2,1.0_2),(2.0_2,2.0_2)/
 DATA ((CC(I,J),I=1,2),J=1,2) /(1.0_2,1.0_2),(2.0_2,2.0_2),(1.0_2,1.0_2),(2.0_2,2.0_2)/
 IF(ANY(R .NE. 1.0_2))PRINT*,"101"
 IF(ANY(RR .NE. 1.0_2))PRINT*,"102"
 IF(C(2) .NE. (2.0_2,2.0_2))PRINT*,"103"
 IF(CC(1,2) .NE. (1.0_2,1.0_2))PRINT*,"104"
 PRINT *,'PASS'
 END
