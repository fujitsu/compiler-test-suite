MODULE mod2
IMPLICIT NONE

ABSTRACT INTERFACE
  SUBROUTINE sub_abs(dmy)
    REAL :: dmy
  END SUBROUTINE
END INTERFACE

REAL :: temp

TYPE ty1
  PROCEDURE(sub_abs),POINTER,NOPASS,PRIVATE :: proc_ptr=>NULL()
END TYPE

TYPE ty2
  INTEGER :: int1
  TYPE(ty1) :: ty1_obj
END TYPE

CONTAINS

SUBROUTINE sub1(dum)
  REAL :: dum
  TYPE(ty2) :: obj
  dum=4.0
  obj%ty1_obj%proc_ptr => sub2
  call obj%ty1_obj%proc_ptr(dum)
END SUBROUTINE

SUBROUTINE sub2(dmy)
  REAL :: dmy
  dmy = dmy + 1
END SUBROUTINE

END MODULE

PROGRAM MAIN
USE mod2

IMPLICIT NONE

call sub1(temp)

IF (temp .EQ. 5.00) THEN
  PRINT*,'pass'
ELSE
  PRINT*,'fail'
ENDIF

END PROGRAM MAIN
