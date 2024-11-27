MODULE MOD_A
    IMPLICIT NONE
    INTEGER :: A = 75
    INTEGER, PRIVATE :: B = 0
    INTEGER, PRIVATE :: C = 0
    CONTAINS
    REAL FUNCTION SUM(INP1,INP2)
        IMPLICIT NONE
        REAL, INTENT(IN) :: INP1,INP2
        SUM =  INP1 + INP2
        B = SUM
    END FUNCTION SUM
    SUBROUTINE DISP_SUM
        IMPLICIT NONE
        write(1,*)'Last sum: ',B
        if (B/=3)write(6,*) "NG"
    END SUBROUTINE DISP_SUM
    REAL FUNCTION DIFF(INP1,INP2)
        IMPLICIT NONE
        REAL, INTENT(IN) :: INP1,INP2
        DIFF =  INP1 - INP2 - 2
        C = DIFF
    END FUNCTION DIFF
    SUBROUTINE DISP_DIFF
        IMPLICIT NONE
        write(1,*)'Last diff: ',C
        if (C/=-3)write(6,*) "NG"
    END SUBROUTINE DISP_DIFF
END MODULE MOD_A
    USE MOD_A
    IMPLICIT NONE
    REAL :: Z1, Z2, Z3, Z4
    Z1 = 1.
    Z2 = 2.
    write(1,*)'Global A:',A
        if (A/=75)write(6,*) "NG"
    Z3 = SUM(Z1,Z2)
    write(1,*)'Z3 is:',Z3
        if (abs(Z3-(+3))>0.00001)write(6,*) "NG"
    CALL DISP_SUM
    Z4 = DIFF(Z1,Z2)
    write(1,*)'Z4 is:',Z4
        if (abs(Z4-(-3))>0.00001)write(6,*) "NG"
    CALL DISP_DIFF
print *,'pass'
END
