print *,'pass'
END PROGRAM
recursive SUBROUTINE SUB(A)
class(*) :: A(10,10,10)
DO I=2,10
call SUB(A)
ENDDO
END SUBROUTINE
