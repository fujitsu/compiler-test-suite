REAL*2,PARAMETER::RR1(4:5)=44,RR2(8:18,10:15)=55
COMPLEX(KIND=2)::CC1(4:8),CC2(8:15,10:15,8:13)
REAL*2::RR3(4:3)
INTEGER::RES1(1)=LBOUND(RR1)
INTEGER::RES2(2)=LBOUND(RR2)
INTEGER::RES3=LBOUND(RR2,DIM=2)
INTEGER::RES4=LBOUND(CC1,DIM=1)
INTEGER::RES5(3)=LBOUND(CC2)
INTEGER::RES6=LBOUND(CC2,DIM=3)
INTEGER::RES7(1)=LBOUND(RR3)
IF(ANY(RES1 /= [4]))PRINT*,"101"
IF(ANY(RES2 /= [8,10]))PRINT*,"102"
IF(RES3 /= 10)PRINT*,"103"
IF(ANY(RES4 /= [4]))PRINT*,"104"
IF(ANY(RES5 /= [8,10,8]))PRINT*,"105"
IF(RES6 /= 8)PRINT*,"106"
IF(ANY(RES7 /= [1]))PRINT*,"107"
PRINT*,"PASS"
END