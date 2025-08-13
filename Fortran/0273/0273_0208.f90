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
IF((R2_1(1) .EQ. R2_2(2)))call s(1)
IF((R2_1(1) == R2_2(2)))call s(02)

IF(R2_1(1) .NE. R3)call s(03)
IF(ANY(R2_1 /= R3))call s(04)

IF(OBJ%R4 .LT. R3)call s(05)
IF(OBJ%R4 < R3)call s(06)

IF((R2_1(2)+1) .LE. R3)call s(07)
IF((R2_1(2)+1) <= R3)call s(08)

IF( OBJ%R5 .GT. OBJ%R4)call s(09)
IF( OBJ%R5 > OBJ%R4)call s(10)

IF( (OBJ%R5+1) .GE. R2_1(1))call s(11)
IF( (OBJ%R5+1) >= R2_1(1))call s(12)
rewind 12
do k=1,12
read(12,*) n
if (n/=k) print *,k,n
end do
print *,'PASS'

END
subroutine s(k)
write(12,*)k
end
