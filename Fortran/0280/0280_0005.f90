REAL*2,PARAMETER::R2=10.5
REAL*2,PARAMETER::RR2=-10.5
REAL*2,PARAMETER::RR3=0.5
COMPLEX(KIND=2),PARAMETER::C2=(10.5,20.5)
COMPLEX(KIND=2),PARAMETER::CC2=(-20.5,20.5)
COMPLEX(KIND=2),PARAMETER::CC3=(30.5,20.5)
INTEGER*8::RES1=INT(R2,KIND=8)
INTEGER*8::RES2=INT(RR2,KIND=8)
INTEGER*8::RES3=INT(RR3,KIND=8)
INTEGER*8::RES4=INT(C2,KIND=8)
INTEGER*8::RES5=INT(CC2,KIND=8)
INTEGER*8::RES6=INT(CC3,KIND=8)
IF(RES1 /= 10)PRINT*,"101",RES1
IF(RES2 /= -10)PRINT*,"102"
IF(RES3 /= 0)PRINT*,"103"
IF(RES4 /= 10)PRINT*,"104"
IF(RES5 /= -20)PRINT*,"105"
IF(RES6 /= 30)PRINT*,"106"

PRINT*,"PASS"

END