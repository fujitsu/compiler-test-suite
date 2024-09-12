MODULE m1
IMPLICIT NONE
    TYPE ty
        INTEGER :: i1
        PROCEDURE(getData),POINTER,NOPASS::ptr=>NULL()
      CONTAINS
        PROCEDURE, PASS(dmy) :: init
        PROCEDURE, NOPASS :: check => getdata
    END TYPE
    TYPE,EXTENDS(ty)::ty1
      INTEGER::i2
    END TYPE
CONTAINS
    SUBROUTINE init(num, dmy)
        class(ty) :: dmy
        INTEGER :: num
        dmy%i1 = num
    END SUBROUTINE
    INTEGER FUNCTION getData(dmy)
        class(ty) :: dmy
        getData = dmy%i1
    END FUNCTION
END MODULE

PROGRAM main
USE m1
IMPLICIT NONE
CLASS(*),ALLOCATABLE :: obj(:,:,:,:)
TYPE(ty)::obj1(3,1,4,2)
INTEGER :: ii,jj
ii = 8
ALLOCATE(obj,SOURCE = obj1)
SELECT TYPE(obj)
  TYPE IS(INTEGER)
    print*,201
  TYPE IS(ty)
    obj(2,1,3,1)%ptr=>getData
    CALL obj(2,1,3,1)%init(ii)
    jj=obj(2,1,3,1)%ptr(obj(2,1,3,1))
    IF (obj(2,1,3,1)%check(obj(2,1,3,1)).EQ. ii .AND. jj .EQ. 8) THEN
      PRINT*,"pass"
    ELSE
      PRINT*, "fail"
    ENDIF
END SELECT
END PROGRAM
