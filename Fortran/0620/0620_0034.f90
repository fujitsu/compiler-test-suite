MODULE m1
IMPLICIT NONE
    TYPE ty
        sequence
        PROCEDURE(getData),POINTER::ptr
        integer::x1
    END TYPE

CONTAINS
    INTEGER FUNCTION getData(dmy)
        type(ty) :: dmy
        TYPE(ty)::ty_obj
    END FUNCTION
END MODULE

PROGRAM main
USE m1
type(ty),ALLOCATABLE :: obj(:)
integer,ALLOCATABLE :: bj(:)

k=0
if (k==1) then
  obj(2)%ptr=>getData
  jj=obj(2)%ptr()
end if
    PRINT*,'pass'
END PROGRAM
