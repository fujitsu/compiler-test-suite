MODULE m1
IMPLICIT NONE
    TYPE ty
        INTEGER :: i1
        REAL :: r1
        PROCEDURE(getData),POINTER,NOPASS::ptr=>NULL()
      CONTAINS
        PROCEDURE, PASS,PUBLIC :: init
        PROCEDURE, NOPASS :: check => getdata
    END TYPE
  
    TYPE,EXTENDS(ty)::ty1
      INTEGER::i2
    END TYPE
    
CONTAINS
    ELEMENTAL SUBROUTINE init(this,num)
        class(ty),INTENT(INOUT) :: this
        INTEGER ,INTENT(INOUT) :: num
        this%i1 = num
    END SUBROUTINE
    INTEGER FUNCTION getData(this)
        class(ty) :: this
        getData = this%i1
    END FUNCTION
END MODULE

PROGRAM main
USE m1
IMPLICIT NONE
CLASS(*),ALLOCATABLE :: obj(:,:)
INTEGER :: ii(2,2),jj
ii = RESHAPE([6,7,8,9],[2,2])
ALLOCATE(obj,SOURCE = RESHAPE([ty(1,1.5), ty(2,2.5), ty(3,3.5), ty(4,4.5)] ,[2,2] ))
SELECT TYPE(obj)
TYPE IS(CHARACTER(*))
  print*,201
TYPE IS(ty)
  obj(1,2)%ptr=>getData
  CALL obj%init(ii)
  jj=obj(1,2)%ptr(obj(1,2))
  IF (obj(1,2)%check(obj(1,2)).EQ. ii(1,2) .AND. &
      obj(2,1)%check(obj(2,1)).EQ. ii(2,1) .AND. &
      obj(1,2)%r1 .EQ. 3.5 .AND. &
      jj .EQ. 8) THEN
    PRINT*,"pass"
  ELSE
    PRINT*, "fail"
  ENDIF
END SELECT
END PROGRAM
