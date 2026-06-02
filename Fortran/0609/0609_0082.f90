MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  CONTAINS
  FINAL::destructor,last
END TYPE

TYPE,EXTENDS(ty)::ty1
  INTEGER :: jj=2
END TYPE

TYPE,EXTENDS(ty1)::ty2
  INTEGER :: kk=3
  CONTAINS
  FINAL::des4_explicit
END TYPE

INTERFACE
SUBROUTINE sub(dmy1)
  IMPORT ty
  IMPORT ty1
  IMPORT ty2
  CLASS(ty),ALLOCATABLE :: dmy1(:,:)
END SUBROUTINE
END INTERFACE


CONTAINS
SUBROUTINE destructor(bv)
  TYPE(ty)::bv
  PRINT*,'destructor called::destructor'
  PRINT*,bv%ii
END SUBROUTINE

SUBROUTINE last(cv)
  TYPE(ty)::cv(:)
  PRINT*,'wrong destructor called::last'
END SUBROUTINE

SUBROUTINE des4_explicit(dmy)
  TYPE(ty2),INTENT(INOUT)::dmy(3,4)
  PRINT*,'correct destructor called::des4_explicit'
  PRINT*,dmy(3,4)%kk
END SUBROUTINE
END MODULE 



PROGRAM MAIN
USE mod1
IMPLICIT NONE
CLASS(ty),ALLOCATABLE :: ty2_obj1(:,:)
CALL sub(ty2_obj1)
END


SUBROUTINE sub(dmy1)
USE mod1
IMPLICIT NONE
CLASS(ty),ALLOCATABLE :: dmy1(:,:)
TYPE(ty2) :: ty2_obj2(3,4)
INTEGER::check1=5
CHARACTER(LEN=100)::check2='OK'
ALLOCATE(dmy1,SOURCE=ty2_obj2)
SELECT TYPE(dmy1)
  TYPE IS(ty2)
    dmy1%ii=100
    dmy1%jj=200
    dmy1%kk=300
    dmy1(3,4)%kk=30
END SELECT
DEALLOCATE(dmy1,STAT=check1,ERRMSG=check2)
PRINT*,check1
PRINT*,check2
END SUBROUTINE
