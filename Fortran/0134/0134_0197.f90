PROGRAM MAIN
IMPLICIT NONE
INTEGER(1) :: I = 3
interface
SUBROUTINE a(J)
IMPLICIT NONE
INTEGER(1),VALUE,OPTIONAL :: J
end SUBROUTINE a
end interface
if (I/=3)print *,101,I
CALL a(I)
if (I/=3)print *,102,I
print *,'pass'
END PROGRAM MAIN
SUBROUTINE a(J)
IMPLICIT NONE
INTEGER(1),VALUE,OPTIONAL :: J
if (J/=3)print *,103,J
J = J + 1
if (J/=4)print *,104,J
END SUBROUTINE
