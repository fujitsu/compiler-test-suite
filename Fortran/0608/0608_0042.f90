MODULE mod1
IMPLICIT NONE

TYPE ty
  INTEGER :: ii=1
  CONTAINS
    FINAL::destructor2
    FINAL::destructor
END TYPE

TYPE ty1
  TYPE(ty)::cmp
END TYPE

CONTAINS
SUBROUTINE destructor(dmy)
  TYPE(ty),INTENT(INOUT)::dmy
  PRINT*,'destructor called:destructor'
  PRINT*,dmy%ii
END SUBROUTINE

SUBROUTINE destructor2(dmy)
  TYPE(ty),INTENT(INOUT)::dmy(:)
  PRINT*,'assume shape destructor called'
  PRINT*,dmy(1)%ii,dmy(2)%ii
END SUBROUTINE
END MODULE 



PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(ty1),POINTER :: ptr(:)
TYPE(ty1),TARGET  :: tar(2:8)
TYPE(ty) :: ty_obj2
INTEGER::v(2:3)=(/2,4/)
ty_obj2%ii=70
tar%cmp%ii=10
tar(4)%cmp%ii=79
tar(8)%cmp%ii=89
ptr=>tar(2:6:2)
ptr(v)%cmp=ty_obj2
IF(tar(4)%cmp%ii .NE. 70) print*,201,ptr(2)%cmp%ii
END
