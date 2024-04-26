TYPE TY
COMPLEX(2) :: C4=(3,5)
COMPLEX(2) :: C5=(4,6)
END TYPE
TYPE(TY) :: OBJ
COMPLEX(2) :: C2_1(2)
COMPLEX(2) :: C2_2(2)
COMPLEX(2) :: C3
C2_1=(5,8)
C2_2=(5,8)
C3=(7,9)
IF((C2_1(1) .EQ. C2_2(2)))call s(01)
IF((C2_1(1) == C2_2(2)))call s(02)

IF(C2_1(1) .NE. C3)call s(03)
IF(ANY(C2_1 /= C3))call s(04)

IF(OBJ%C4%RE .LT. C3%RE)call s(05)
IF(OBJ%C4%IM < C3%IM)call s(06)

IF(REAL(C2_1(2)+1) .LE. IMAG(C3))call s(07)
IF(REAL(C2_1(2)+1) <= REAL(C3))call s(08)

IF( OBJ%C5%IM .GT. OBJ%C4%IM)call s(09)
IF( OBJ%C5%RE > OBJ%C4%RE)call s(10)

IF( REAL(OBJ%C5+1) .LT. IMAG(C2_1(1)))call s(11)
IF( REAL(OBJ%C5+1) <  IMAG(C2_1(1)))call s(12)
rewind 1
do k=1,12
read (1,*) n
if (k/=n) print *,n,k
end do
print *,'PASS'

END
subroutine s(k)
write(1,*)k
end
