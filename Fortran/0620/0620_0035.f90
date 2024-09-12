MODULE m1
IMPLICIT NONE
    TYPE ty
        contains
        PROCEDURE ::ptr=>getData
    END TYPE

CONTAINS
    INTEGER FUNCTION getData(dmy)
        class(ty) :: dmy
        TYPE(ty)::ty_obj
    END FUNCTION
END MODULE

PROGRAM main
USE m1
class(ty),ALLOCATABLE :: obj(:)

if (1==2) then
  jj=obj(2)%ptr()
endif
print *,'pass'
END PROGRAM
