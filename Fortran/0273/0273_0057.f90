REAL*2::R2
COMPLEX(KIND=2)::C2
REAL*8::R8
R2=5.556_2
C2=(10.55_2,20.677_2)
R8=DBLE(R2)
IF(R8 .NE. 5.556_2)PRINT*,"101"
R8=DBLE(C2)
IF(R8 .NE. 10.55_2)PRINT*,"102"
PRINT*,"PASS"

END


