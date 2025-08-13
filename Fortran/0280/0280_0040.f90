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
IF((C2_1(1) .EQ. C2_2(2)) .AND.((C2_1(1) == C2_2(2))))write(7,*)123
IF((C2_1(1) .NE. C3) .OR. ANY(C2_1 /= C3))write(7,*)123

IF((OBJ%C4%RE .LT. C3%RE) .AND. (OBJ%C4%IM < C3%IM))write(7,*)123

IF(.NOT.((REAL(C2_1(2)+1) .LE. IMAG(C3)).OR.(REAL(C2_1(2)+1) <= REAL(C3))).EQV. .FALSE.)write(7,*)123

IF( (OBJ%C5%IM .GT. OBJ%C4%IM).AND.(OBJ%C5%RE > OBJ%C4%RE))write(7,*)123
IF(( REAL(OBJ%C5+1) .GE. IMAG(C2_1(1))).OR.( REAL(OBJ%C5+1) >= IMAG(C2_1(1))))write(7,*)123

rewind 7
read(7,*) k;if (k/=123) print *,189
read(7,*) k;if (k/=123) print *,289
read(7,*) k;if (k/=123) print *,389
read(7,*) k;if (k/=123) print *,489
read(7,*) k;if (k/=123) print *,589
print *,'PASS'
END
