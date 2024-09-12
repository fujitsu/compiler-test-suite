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
    SUBROUTINE init(num, dmy)
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
CALL obj%init(ii)
jj=obj%ptr(obj)
IF (obj%check(obj).EQ. ii .AND. jj .EQ. 8) THEN
    PRINT*,"pass"
ELSE
    PRINT*, "fail"
ENDIF
END PROGRAM
