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
IF((R2_1(1) .EQ. R2_2(2)))write(1,*)123
IF((R2_1(1) == R2_2(2)))write(1,*)123

IF(R2_1(1) .NE. R3)write(1,*)123
IF(ANY(R2_1 /= R3))write(1,*)123

IF(OBJ%R4 .LT. R3)write(1,*)123
IF(OBJ%R4 < R3)write(1,*)123

IF((R2_1(2)+1) .LE. R3)write(1,*)123
IF((R2_1(2)+1) <= R3)write(1,*)123

IF( OBJ%R5 .GT. OBJ%R4)write(1,*)123
IF( OBJ%R5 > OBJ%R4)write(1,*)123

IF( (OBJ%R5+1) .GE. R2_1(1))write(1,*)123
IF( (OBJ%R5+1) >= R2_1(1))write(1,*)123
rewind 1
read(1,*) k;if (k/=123) print *,189
read(1,*) k;if (k/=123) print *,289
read(1,*) k;if (k/=123) print *,389
read(1,*) k;if (k/=123) print *,489
read(1,*) k;if (k/=123) print *,589
read(1,*) k;if (k/=123) print *,689
read(1,*) k;if (k/=123) print *,789
read(1,*) k;if (k/=123) print *,889
read(1,*) k;if (k/=123) print *,989
read(1,*) k;if (k/=123) print *,109
read(1,*) k;if (k/=123) print *,119
read(1,*) k;if (k/=123) print *,129
print *,'PASS'

END
