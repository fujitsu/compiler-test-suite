MODULE m1
IMPLICIT NONE
    TYPE ty
        INTEGER :: i1=0
        REAL :: r1=0
        PROCEDURE(getData),POINTER::ptr=>NULL()
      CONTAINS
        PROCEDURE, PASS(dmy) :: init
        PROCEDURE, PASS :: check => getData
    END TYPE

    TYPE,EXTENDS(ty)::ty1
      INTEGER::i2=0
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
        IF(SIZEOF(dmy) .NE. 32) PRINT*,301
        IF(SAME_TYPE_AS(dmy,ty_obj) .NEQV. .FALSE.) PRINT*,202
    END FUNCTION
END MODULE

PROGRAM MAIN
USE m1
IMPLICIT NONE
CLASS(*),ALLOCATABLE :: obj(:),obj2(:)
INTEGER :: ii(4),jj,jj2
ii = (/6,7,8,9/)
ALLOCATE(obj,obj2,SOURCE = [ty1(i1=1,r1=1.5,i2=3), &
                       ty1(i1=2,r1=2.5,i2=4), &
                       ty1(i1=3,r1=3.5,i2=5), & 
                       ty1(i1=4,r1=4.5,i2=6)])
SELECT TYPE(obj)
TYPE IS(ty)
  print*,105
TYPE IS(ty1)
  obj(2)%ptr=>getData
  CALL obj%init(ii)
  jj=obj(2)%ptr()
  IF (obj(1)%check().ne. ii(1))print*,101
  IF (obj(3)%check().ne. ii(3))print*,102
  IF (obj(1)%i2 .ne. 3)print*,103
  IF (jj .ne. 7)print*,104
CLASS DEFAULT
   print*,106
END SELECT

SELECT TYPE(obj2)
TYPE IS(ty)
  print*,205
TYPE IS(ty1)
  obj2(2)%ptr=>getData
  CALL obj2%init(ii)
  jj2=obj2(2)%ptr()
  IF (obj2(1)%check().ne. ii(1))print*,201
  IF (obj2(3)%check().ne. ii(3))print*,202
  IF (obj2(1)%i2 .ne. 3)print*,203
  IF (jj2 .ne. 7)print*,204
CLASS DEFAULT
   print*,206
END SELECT
    PRINT*,"pass"
END PROGRAM
