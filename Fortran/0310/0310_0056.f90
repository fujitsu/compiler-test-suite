IF (.FALSE.) THEN
CALL SUB(2*(10**9))
END IF
PRINT *,"*** OK ***"
CONTAINS
  SUBROUTINE SUB(I)
    INTEGER A(I:-1)
  END SUBROUTINE
END