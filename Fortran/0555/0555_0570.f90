MODULE m1
IMPLICIT NONE
    TYPE ty
        INTEGER :: i1=0
        contains
        PROCEDURE,NOPASS::init
        PROCEDURE,PASS::ptr=>getData
    END TYPE
 
    TYPE,EXTENDS(ty)::ty1
      INTEGER::i2=0
    END TYPE
CONTAINS
    SUBROUTINE init(dum)
      CLASS(ty)::dum
      dum%i1=5
    END SUBROUTINE
    INTEGER FUNCTION getData(dmy)
        class(ty) :: dmy
        dmy%i1=dmy%i1+2
        getData = dmy%i1
    END FUNCTION
END MODULE
 
PROGRAM main
USE m1
IMPLICIT NONE
CLASS(*),ALLOCATABLE :: obj(:)
INTEGER :: jj
ALLOCATE(ty1::obj(3))
SELECT TYPE(obj)
TYPE IS(ty)
  print*,203
TYPE IS(ty1)
  CALL obj(2)%init(obj(2))
  jj=obj(2)%ptr()
  IF(jj == 7) THEN
    PRINT*,'pass'
  ELSE
    PRINT*,'fail'
  ENDIF
END SELECT
END PROGRAM
