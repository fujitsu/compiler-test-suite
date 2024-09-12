MODULE m1
IMPLICIT NONE
    TYPE ty
        INTEGER :: ii
        PROCEDURE(getData),POINTER,NOPASS::ptr=>NULL()
      CONTAINS
        PROCEDURE, PASS(dmy) :: init
        PROCEDURE, NOPASS :: check => getdata
    END TYPE
CONTAINS
    ELEMENTAL SUBROUTINE init(num, dmy)
        class(ty), INTENT(INOUT) :: dmy
        INTEGER , INTENT(INOUT) :: num
        dmy%ii = num
    END SUBROUTINE
    INTEGER FUNCTION getData(dmy)
        class(ty) :: dmy
        getData = dmy%ii
    END FUNCTION
END MODULE

PROGRAM main
USE m1
IMPLICIT NONE
CLASS(ty),ALLOCATABLE :: obj(:)
TYPE(ty)::obj1(2)
INTEGER :: ii(2),jj
ii = (/8,9/)
ALLOCATE(obj,SOURCE = obj1)
obj(1)%ptr=>getData
CALL obj%init(ii)
jj=obj(1)%ptr(obj(1))
IF (obj(1)%check(obj(1)).EQ. ii(1) .AND. &
    obj(2)%check(obj(2)).EQ. ii(2) .AND. &
    jj .EQ. 8) THEN
    PRINT*,"pass"
ELSE
    PRINT*, "fail"
ENDIF
END PROGRAM
