MODULE MOD06
  IMPLICIT NONE

  TYPE :: D06
  END TYPE D06

CONTAINS
  SUBROUTINE SUB06()
    IMPLICIT NONE
    PRINT *, "SUB06"
  END SUBROUTINE SUB06
END MODULE MOD06

SUBROUTINE SELECT_TYPE06()
  USE MOD06
  IMPLICIT NONE

  CLASS(*), POINTER :: NTYPE_VAR(:)

  ALLOCATE(D06 :: NTYPE_VAR(1))

END SUBROUTINE SELECT_TYPE06

PROGRAM MAIN
  CALL SELECT_TYPE06()
  print *, "pass"
END PROGRAM MAIN
