INTEGER::KK
REAL*2::R
COMPLEX(KIND=2)::C2
KK=DIGITS(R)
IF(KK /= 11)PRINT*,'101'
IF(DIGITS(C2%IM)/= 11)PRINT*,'102'
PRINT*,"PASS"
END
