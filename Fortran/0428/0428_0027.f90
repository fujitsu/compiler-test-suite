MODULE MOD06
  IMPLICIT NONE

  TYPE :: D06
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
  CLASS(*), POINTER :: NTYPE_VAR2(:)
  CLASS(*), POINTER :: NTYPE_VAR3(:)
  type(D06),pointer:: x(:)
  allocate( x(1),source=d06())

  ALLOCATE (NTYPE_VAR(1),&
            NTYPE_VAR2(1),&
            NTYPE_VAR3(1),mold=x)

  SELECT TYPE( NTYPE_VAR)
  CLASS IS(D06)
     CALL NTYPE_VAR(1)%PROC()
  END SELECT
  SELECT TYPE( NTYPE_VAR2)
  CLASS IS(D06)
     CALL NTYPE_VAR2(1)%PROC()
  END SELECT
  SELECT TYPE( NTYPE_VAR3)
  CLASS IS(D06)
     CALL NTYPE_VAR3(1)%PROC()
  END SELECT

END SUBROUTINE SELECT_TYPE06

PROGRAM MAIN
  CALL SELECT_TYPE06()
rewind 1
read(1,*) k
if (k/=6) print *,101
read(1,*) k
if (k/=6) print *,102
read(1,*) k
if (k/=6) print *,103
  print *, "pass"
END PROGRAM MAIN