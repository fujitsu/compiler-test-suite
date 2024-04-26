TYPE TY
REAL(2) :: R4=3
REAL(2) :: R5=4
END TYPE 
TYPE(TY) :: OBJ
REAL(2) :: R2_1(2)
REAL(2) :: R2_2(2)
REAL(2) :: R3
R2_1=5
R2_2=5
R3=6
IF((R2_1(1) .EQ. R2_2(2)) .AND. (R2_1(1) == R2_2(2)))then
else
PRINT*,"????1"
endif
IF((R2_1(1) .NE. R3) .OR. (ANY(R2_1 /= R3)))then
else
PRINT*,"????2"
endif
IF((OBJ%R4 .LT. R3) .AND. (abs(OBJ%R4-3)<0.02))then
else
print *,real(OBJ%R4),real(R3), real(OBJ%R4)
PRINT*,"????34"
endif
IF(((R2_1(2)+1) .LE. R3) .OR. ((R2_1(2)+1) <= R3))then
else
PRINT*,"????5"
endif
IF((OBJ%R5 .GT. OBJ%R4) .AND. (OBJ%R5 > OBJ%R4))then
else
PRINT*,"????6"
endif
IF(((OBJ%R5+1) .GE. R2_1(1)) .OR. ((OBJ%R5+1) >= R2_1(1)))then
else
PRINT*,"????7"
endif
PRINT*,"PASS"

END
