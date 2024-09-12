PROGRAM main

IMPLICIT NONE

INTERFACE
  SUBROUTINE sub(dmy)
    REAL :: dmy
  END SUBROUTINE
END INTERFACE

ABSTRACT INTERFACE
  SUBROUTINE sub_abs(dmy)
    REAL :: dmy
  END SUBROUTINE
END INTERFACE


REAL :: temp

TYPE ty1
  PROCEDURE(sub_abs),POINTER,NOPASS :: proc_ptr=>NULL()
END TYPE

TYPE ty2
  INTEGER :: int1
  TYPE(ty1) :: ty1_obj
END TYPE

TYPE(ty2) :: obj

temp=2.0
obj%ty1_obj%proc_ptr => sub
call sub(temp)

IF (temp .eq. 3.00) THEN
  PRINT*,'pass'
ELSE
  PRINT*,'fail'
ENDIF


END PROGRAM main

SUBROUTINE sub(dmy)
  REAL :: dmy
  dmy = dmy + 1
END SUBROUTINE
