REAL*2::R=0.0_2
COMPLEX(KIND=2)::C2=(0.0_2,0.0_2)
IF(PRECISION(R) /= 3)PRINT*,'101'
IF(PRECISION(C2)/= 3)PRINT*,'102'
IF(PRECISION(C2+R)/= 3)PRINT*,'105'
IF(PRECISION(CMPLX(5,KIND=2))/= 3)PRINT*,'103'
IF(PRECISION(ABS(5.5_2))/= 3)PRINT*,'104'
PRINT*,"PASS"
END