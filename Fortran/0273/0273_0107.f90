REAL(KIND=2),PARAMETER::R=5.5,R2(5)=6.5
TYPE TY
 REAL(KIND=2)::R2,R2ARR(3)
 COMPLEX(KIND=2)::C2
END TYPE
INTEGER::II1=RADIX(R)
INTEGER::II2=RADIX(R2)
TYPE(TY)::OBJ=TY(5.5_2,[1.5_2,2.5_2,3.5_2],(5.8_2,1))
INTEGER::II3=RADIX(OBJ%R2)
INTEGER::II4=RADIX(OBJ%R2ARR(2))
INTEGER::II5=RADIX(OBJ%C2%RE)
IF(II1 /= 2)PRINT*,"101"
IF(II2 /= 2)PRINT*,"102"
IF(II3 /= 2)PRINT*,"103"
IF(II4 /= 2)PRINT*,"104"
IF(II5 /= 2)PRINT*,"105"

PRINT*,"PASS"

END
