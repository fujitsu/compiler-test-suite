MODULE m1
IMPLICIT NONE
    TYPE ty
        INTEGER :: i1=0
        REAL :: r1=0
        PROCEDURE(getData),POINTER::ptr=>NULL()
      CONTAINS
        PROCEDURE, PASS(dmy) :: init
        PROCEDURE, PASS :: check => getdata
    END TYPE

    TYPE,EXTENDS(ty)::ty1
      INTEGER::i2=0
    END TYPE

INTERFACE
SUBROUTINE SUB(dum)
  IMPORT ty
  IMPORT ty1
  CLASS(ty)::dum(:)
END SUBROUTINE
END INTERFACE

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
        IF(SIZEOF(dmy) .NE. 24) PRINT*,101
        IF(SAME_TYPE_AS(dmy,ty_obj) .NEQV. .FALSE.) PRINT*,102
    END FUNCTION
END MODULE

PROGRAM main
USE m1
IMPLICIT NONE
CLASS(*),ALLOCATABLE :: obj(:)
INTEGER :: ii(4),jj
ii = (/6,7,8,9/)
ALLOCATE(obj,SOURCE = [ty1(i1=1,r1=1.5,i2=3), &
                       ty1(i1=2,r1=2.5,i2=4), &
                       ty1(i1=3,r1=3.5,i2=5), & 
                       ty1(i1=4,r1=4.5,i2=6)])
CALL SUB([ty(i1=4,r1=4.5), &
          ty(i1=3,r1=3.5), &
          ty(i1=2,r1=2.5), &
          ty(i1=1,r1=1.5)])

SELECT TYPE(obj)
TYPE IS(ty)
  print*,203
TYPE IS(ty1)
  obj(2)%ptr=>getData
  CALL obj%init(ii)
  jj=obj(2)%ptr()
  IF (obj(1)%check().NE. ii(1) .AND. &
      obj(3)%check().NE. ii(3) .AND. &
      obj(1)%i2 .NE. 3 .AND. &
      jj .NE. 7)  PRINT*,201
  if (obj(2)%ptr()+obj(2)%ptr()+obj(2)%ptr()+obj(2)%ptr()/=7*4) then
     print *,901
  end if
END SELECT
    PRINT*,'pass'
END PROGRAM

SUBROUTINE SUB(dum)
  USE m1
  CLASS(ty)::dum(:)
  TYPE(ty1)::local
  IF(dum(3)%i1/=2 .AND. dum(3)%r1/=2.5 .AND. dum(4)%i1/=1) PRINT*,301
  IF(SAME_TYPE_AS(dum,local) .EQV. .FALSE.) THEN
  ELSE
    PRINT*,'fail'
  ENDIF
END SUBROUTINE
