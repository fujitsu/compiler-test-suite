MODULE m1
IMPLICIT NONE
    TYPE ty
        INTEGER :: i1
        REAL :: r1
        PROCEDURE(getData),POINTER,NOPASS::ptr=>NULL()
      CONTAINS
        PROCEDURE, PASS(dmy) :: init
        PROCEDURE, NOPASS :: check => getdata
    END TYPE
  
    TYPE,EXTENDS(ty)::ty1
      INTEGER::i2
    END TYPE
    
CONTAINS
    ELEMENTAL SUBROUTINE init(num, dmy)
        class(ty),INTENT(INOUT):: dmy
        INTEGER,INTENT(INOUT) :: num
        dmy%i1 = num
    END SUBROUTINE
    INTEGER FUNCTION getData(dmy)
        class(ty) :: dmy
        TYPE(ty)::ty_obj
        getData = dmy%i1
        IF(SIZEOF(dmy) .NE. 32) PRINT*,201
        IF(SAME_TYPE_AS(dmy,ty_obj) .NEQV. .FALSE.) PRINT*,202
    END FUNCTION
END MODULE

PROGRAM main
USE m1
IMPLICIT NONE
CLASS(*),ALLOCATABLE :: obj(:,:)
INTEGER :: ii(2,2),jj
ii = RESHAPE([6,7,8,9],[2,2])
ALLOCATE(obj,SOURCE = RESHAPE([ty1(i1=1,r1=1.5,i2=3), &
                               ty1(i1=2,r1=2.5,i2=4), &
                               ty1(i1=3,r1=3.5,i2=5), & 
                               ty1(i1=4,r1=4.5,i2=6)],& 
                               [2,2] ))
SELECT TYPE(obj)
TYPE IS(ty)
  print*,203
TYPE IS(ty1)
  obj(1,2)%ptr=>getData
  CALL obj%init(ii)
  jj=obj(1,2)%ptr(obj(1,2))
  IF (obj(1,2)%check(obj(1,2)).EQ. ii(1,2) .AND. &
      obj(2,1)%check(obj(2,1)).EQ. ii(2,1) .AND. &
      obj(2,2)%i2 .EQ. 6 .AND. &
      jj .EQ. 8) THEN
    PRINT*,"pass"
  ELSE
    PRINT*, "fail"
  ENDIF
END SELECT
END PROGRAM
