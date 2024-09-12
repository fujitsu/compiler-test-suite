PROGRAM main

INTERFACE
  SUBROUTINE sub(dum)
    REAL :: dum
  END SUBROUTINE
END INTERFACE

TYPE ty1
  PROCEDURE(sub),POINTER,NOPASS :: proc_ptr=>NULL()
END TYPE

TYPE ty2
  INTEGER :: int1
  TYPE(ty1) :: ty1_obj(2)
END TYPE

REAL :: temp

call callsub(temp)

IF (temp .EQ. 5.2) THEN
  PRINT*,'pass'
ELSE
  PRINT*,'fail'
ENDIF

CONTAINS

SUBROUTINE callsub(dmy)
  TYPE(ty2) :: obj(2)
  REAL :: dmy
  dmy=3.2
  obj(1)%ty1_obj(2)%proc_ptr => sub
  call obj(1)%ty1_obj(2)%proc_ptr(dmy)
END SUBROUTINE

END PROGRAM main

SUBROUTINE sub(dum)
  REAL :: dum
  dum=5.2
END SUBROUTINE
