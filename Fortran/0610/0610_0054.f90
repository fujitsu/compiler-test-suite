PROGRAM main

INTERFACE
  SUBROUTINE sub(dum)
    REAL :: dum
  END SUBROUTINE
END INTERFACE

TYPE ty1
  PROCEDURE(sub),POINTER,NOPASS :: proc_ptr=>NULL()
END TYPE

TYPE,EXTENDS(ty1) :: ty2
  INTEGER :: int1
END TYPE

CLASS(ty2),DIMENSION(:),POINTER :: obj
REAL :: dmy
ALLOCATE(obj(2))
dmy=3.2
SELECT TYPE(asc => obj)
CLASS IS(ty2)
asc(1)%proc_ptr => sub
CALL asc(1)%proc_ptr(dmy)
END SELECT

IF (dmy .EQ. 5.2) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
ENDIF

END PROGRAM 

SUBROUTINE sub(dum)
  REAL :: dum
  dum=5.2
END SUBROUTINE
