CALL S()
PRINT*,"PASS"
CONTAINS
SUBROUTINE S()
REAL(2),TARGET :: D1
SAVE :: D1
REAL(2),POINTER :: PTR=>D1
COMPLEX(2),TARGET:: C1
SAVE :: C1
COMPLEX(2),POINTER :: CPTR=>C1
IF(ASSOCIATED(PTR) .EQV. .FALSE.)PRINT*,"101"
IF(ASSOCIATED(CPTR) .EQV. .FALSE.)PRINT*,"102"
END SUBROUTINE
END