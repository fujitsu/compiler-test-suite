PROGRAM MAIN
    IMPLICIT NONE
    REAL(8) :: I = 3.0
    REAL(8) :: J
    INTERFACE
        SUBROUTINE a(J)
            IMPLICIT NONE
            REAL(8),VALUE :: J
        END SUBROUTINE a
        SUBROUTINE a0(J)
            IMPLICIT NONE
            REAL(8),VALUE :: J
        END SUBROUTINE a0
        SUBROUTINE a1(J)
            IMPLICIT NONE
            REAL(8),VALUE :: J
        END SUBROUTINE a1
    END INTERFACE
    J = I
    CALL a0(I)

IF (I /= J) THEN
    WRITE(*,*) '*NG*', I, J
ELSE
    WRITE(71,*) '*OK*', I, J
END IF

    J = I
    CALL a1(I)

IF (I /= J) THEN
    WRITE(*,*) '*NG*', I, J
ELSE
    WRITE(71,*) '*OK*', I, J
END IF

print *,'pass'
END PROGRAM MAIN

SUBROUTINE a(J)
    IMPLICIT NONE
    REAL(8),VALUE :: J

ENTRY a0(J)
    WRITE(71,*) J
    J = J + 1.0
    WRITE(71,*) J
    RETURN
ENTRY a1(J)
    WRITE(71,*) J
    J = J + 1.0
    WRITE(71,*) J
    RETURN
END SUBROUTINE
