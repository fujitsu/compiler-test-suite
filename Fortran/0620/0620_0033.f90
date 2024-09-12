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
        IF(SIZEOF(dmy) .NE. 32) PRINT*,101
        IF(SAME_TYPE_AS(dmy,ty_obj) .NEQV. .FALSE.) PRINT*,102
    END FUNCTION
END MODULE

PROGRAM main
USE m1
CLASS(ty),ALLOCATABLE :: obj(:)

k=0
if (k==1) then
  obj(2)%ptr=>getData
  obj(2)%i1 = 2
  jj=obj(2)%ptr()
end if
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
