REAL(KIND=2)::R=5.5_2,R2(5)=6.5_2
INTEGER::II1=PRECISION(R)
INTEGER::II2=PRECISION(R2)
INTEGER::II3=PRECISION(1.5_2*2.5_2)
INTEGER::II4=PRECISION([REAL*2::(1.5_8,22.5_16,II=1,2),5.5]+[REAL*2::(1.5_8,22.5_16,II=1,2),5.5])

IF(II1 /= 3)PRINT*,"101"
IF(II2 /= 3)PRINT*,"102"
IF(II3 /= 3)PRINT*,"103"
IF(II4 /= 3)PRINT*,"104"
PRINT*,"PASS"

END
