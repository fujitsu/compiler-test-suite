MODULE m1
IMPLICIT NONE
    TYPE ty
        INTEGER :: ii
        PROCEDURE(getData),POINTER::ptr=>NULL()
      CONTAINS
        PROCEDURE, NOPASS :: init
        PROCEDURE :: check => getdata
    END TYPE
CONTAINS
    SUBROUTINE init(dmy, num)
        class(ty) :: dmy
        INTEGER :: num
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
TYPE(ty) :: obj
INTEGER :: ii,jj
ii = 8
obj%ptr=>getData
CALL obj%init(obj,ii)
jj=obj%ptr()
IF (obj%check().EQ. ii .AND. jj .EQ. 8) THEN
    PRINT*,"pass"
ELSE
    PRINT*, "fail"
ENDIF
END PROGRAM
