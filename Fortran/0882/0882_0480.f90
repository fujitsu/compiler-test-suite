MODULE m1
IMPLICIT NONE
    TYPE ty
        INTEGER :: i1=0
        REAL :: r1=0
        PROCEDURE(getData),POINTER,PASS::ptr=>NULL()
      CONTAINS
        PROCEDURE, PASS :: init
        PROCEDURE, PASS :: check => getdata
    END TYPE

    TYPE,EXTENDS(ty)::ty1
      INTEGER::i2=0
      CLASS(ty),POINTER::ty_ptr1=>NULL()
      CLASS(ty),POINTER::ty_ptr2=>NULL()
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
        IF(SIZEOF(dmy) .NE. 104) PRINT*,201
        IF(SAME_TYPE_AS(dmy,ty_obj) .NEQV. .FALSE.) PRINT*,202
    END FUNCTION

function ff()
	class(ty), allocatable :: ff(:,:)
	allocate(ff, SOURCE=fun3())
end function
  recursive FUNCTION fun()
  TYPE(ty1)::temp(2,2)
  CLASS(ty), allocatable::fun(:,:)
  CLASS(ty), ALLOCATABLE::fun2(:,:)
  CLASS(ty), ALLOCATABLE::fun3(:,:)
  temp =RESHAPE([ty1(i1=1,r1=1.5,i2=3), &
               ty1(i1=2,r1=2.5,i2=4), &
               ty1(i1=3,r1=3.5,i2=5), &
               ty1(i1=4,r1=4.5,i2=6)],&
               [2,2] )
  allocate(fun, SOURCE = temp)
  return
  ENTRY fun2()
    ALLOCATE(fun2, SOURCE= ff())
    return
  ENTRY fun3()
    ALLOCATE(fun3, SOURCE=RESHAPE([ty1(i1=5,r1=5.5,i2=1), &
                               ty1(i1=6,r1=6.5,i2=2), &
                               ty1(i1=7,r1=7.5,i2=3), &
                               ty1(i1=8,r1=8.5,i2=4)],&
                               [2,2] ))
    return
  END FUNCTION
END MODULE

PROGRAM main
USE m1
IMPLICIT NONE
CLASS(*),ALLOCATABLE :: obj(:,:)
INTEGER :: ii(2,2),jj
ii = RESHAPE([6,7,8,9],[2,2])
ALLOCATE(obj,SOURCE=fun2())
SELECT TYPE(obj)
TYPE IS(ty)
  print*,203
TYPE IS(ty1)
  obj(1,2)%ptr=>getData
  CALL obj%init(ii)
  jj=obj(1,2)%ptr()
  IF (obj(1,2)%check().EQ. ii(1,2) .AND. &
      obj(2,1)%check().EQ. ii(2,1) .AND. &
      obj(2,2)%i2 .EQ. 4 .AND. &
      jj .EQ. 8) THEN
    PRINT*,"pass"
  ELSE
    PRINT*, "fail"
  ENDIF
END SELECT

END PROGRAM
