REAL*2,PARAMETER::R=10.5
REAL*2,PARAMETER::RR(5)=20.5
REAL*2,PARAMETER::RES1=TINY(R)
REAL*2,PARAMETER::RES2=TINY(RR)
IF(RES1 /= 6.1035E-05_2)PRINT*,"101"
IF(RES2 /= 6.1035E-05_2)PRINT*,"102"
PRINT*,"PASS"
END