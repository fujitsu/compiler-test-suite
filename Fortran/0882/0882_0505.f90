MODULE m1
IMPLICIT NONE
    TYPE ty
        INTEGER :: i1=0
        REAL :: r1=0
        PROCEDURE(getData),POINTER,NOPASS::ptr=>NULL()
      CONTAINS
        PROCEDURE, PASS,PUBLIC :: init
        PROCEDURE, NOPASS :: check => getdata
    END TYPE

    TYPE,EXTENDS(ty)::ty1
      INTEGER::i2=0
    END TYPE

INTERFACE
SUBROUTINE SUB(dmy)
  IMPORT ty
  IMPORT ty1
  CLASS(ty1)::dmy(2,2)
END SUBROUTINE  
END INTERFACE

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
call SUB(RESHAPE([ty1(1,1.5), ty1(2,3.5), ty1(3,3.5), ty1(4,4.5)] ,[2,2]))
SELECT TYPE(obj)
TYPE IS(CHARACTER(*))
  print*,201
TYPE IS(ty)
  obj(1,2)%ptr=>getData
  CALL obj%init(ii)
  jj=obj(1,2)%ptr(obj(1,2))
  IF (obj(1,2)%check(obj(1,2)).NE. ii(1,2) .AND. &
      obj(2,1)%check(obj(2,1)).NE. ii(2,1) .AND. &
      obj(1,2)%r1 .NE. 3.5 .AND. &
      jj .NE. 8) PRINT*,202
END SELECT
END PROGRAM

SUBROUTINE SUB(dmy)
  USE m1
  CLASS(ty1)::dmy(2,2)
  TYPE(ty1)::local
  IF(dmy(2,1)%i1 .NE. 2 .AND. dmy(2,1)%r1 .NE. 3.5)PRINT*,301
  IF(SAME_TYPE_AS(local,dmy) .EQV. .TRUE.) PRINT*,'pass'
END SUBROUTINE
