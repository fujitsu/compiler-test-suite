MODULE MOD06
  IMPLICIT NONE

  TYPE :: D06
      procedure(),pointer,nopass::p
   CONTAINS
     PROCEDURE, NOPASS :: PROC => SUB06
  END TYPE D06

CONTAINS
  SUBROUTINE SUB06()
    IMPLICIT NONE
    write(1,*) "6"
  END SUBROUTINE SUB06
END MODULE MOD06

SUBROUTINE SELECT_TYPE06()
  USE MOD06
  IMPLICIT NONE

  CLASS(*), POINTER :: NTYPE_VAR(:)

  ALLOCATE(D06 :: NTYPE_VAR(1))

  SELECT TYPE( NTYPE_VAR)
  CLASS IS(D06)
     CALL NTYPE_VAR(1)%PROC()
  END SELECT

END SUBROUTINE SELECT_TYPE06

PROGRAM MAIN
  CALL SELECT_TYPE06()
rewind 1
read(1,*) k
if (k/=6) print *,101
  print *, "pass"
END PROGRAM MAIN