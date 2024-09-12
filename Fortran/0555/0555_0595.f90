MODULE m1
IMPLICIT NONE
    TYPE ty
        INTEGER :: i1=0
        REAL :: r1=0
        PROCEDURE(getData),POINTER,NOPASS::ptr=>NULL()
      CONTAINS
        PROCEDURE, PASS :: init
        PROCEDURE, NOPASS :: check => getdata
    END TYPE
  
    TYPE,EXTENDS(ty)::ty1
      INTEGER::i2=0
    END TYPE
    
CONTAINS
    ELEMENTAL SUBROUTINE init(dmy,num)
        class(ty),INTENT(INOUT):: dmy
        INTEGER,INTENT(INOUT) :: num
        dmy%i1 = num
    END SUBROUTINE
    INTEGER FUNCTION getData(dmy)
        class(ty) :: dmy
        TYPE(ty)::ty_obj
        getData = dmy%i1
        IF(SIZEOF(dmy) .NE. 32) PRINT*,101
        IF(SAME_TYPE_AS(dmy,ty_obj) .NEQV. .FALSE.) PRINT*,102
    END FUNCTION
END MODULE



PROGRAM main
USE m1
IMPLICIT NONE
CLASS(*),ALLOCATABLE :: obj(:,:,:,:,:)
INTEGER :: ii(2,2,1,2,1),jj
ii = RESHAPE([10,20,30,40,50,60,70,80],[2,2,1,2,1])
ALLOCATE(obj,SOURCE=fun())
SELECT TYPE(obj)
TYPE IS(ty)
  print*,203
TYPE IS(ty1)
  obj(1,2,1,2,1)%ptr=>getData
  CALL obj%init(ii)
  jj=obj(1,2,1,2,1)%ptr(obj(1,2,1,2,1))
  IF (obj(1,2,1,2,1)%check(obj(1,2,1,2,1)).NE. ii(1,2,1,2,1) .AND. &
      obj(2,1,1,2,1)%check(obj(2,1,1,2,1)).NE. ii(2,1,1,2,1) .AND. &
      obj(2,2,1,2,1)%i2 .NE. 8 .AND. jj .NE. 70) THEN
    PRINT*,'fail'
  ELSE
    PRINT*,'pass'
  ENDIF
END SELECT

CONTAINS
FUNCTION fun()
CLASS(ty1),ALLOCATABLE::fun(:,:,:,:,:)
TYPE(ty)::local
ALLOCATE(ty1::fun(2,2,1,2,1))
SELECT TYPE(fun)
TYPE IS(ty1)
  fun=RESHAPE([ty1(i1=8,r1=8.5,i2=1), &
               ty1(i1=7,r1=7.5,i2=2), &
               ty1(i1=6,r1=6.5,i2=3), &
               ty1(i1=5,r1=5.5,i2=4), &  
               ty1(i1=4,r1=4.5,i2=5), &
               ty1(i1=3,r1=3.5,i2=6), &
               ty1(i1=2,r1=2.5,i2=7), &
               ty1(i1=1,r1=1.5,i2=8)],&
               [2,2,1,2,1] )
  IF(SAME_TYPE_AS(local,fun) .NEQV. .FALSE.)PRINT*,302
END SELECT
END FUNCTION
END PROGRAM
