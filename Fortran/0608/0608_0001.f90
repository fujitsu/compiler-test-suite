MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  CONTAINS
    FINAL::destructor
    FINAL::destructor1
END TYPE

CONTAINS
ELEMENTAL SUBROUTINE destructor1(dmy)
  TYPE(ty),INTENT(INOUT)::dmy
  dmy%ii=300
END SUBROUTINE

SUBROUTINE destructor(dmy)
  TYPE(ty),INTENT(INOUT)::dmy(:,:,:)
  PRINT*,'assume size destructor called'
  IF(dmy(2,1,8)%ii .NE. 30) print*,301
  DO WHILE(dmy(2,1,8)%ii .EQ. 30)
    PRINT*,dmy(2,1,8)%ii
    dmy(2,1,8)%ii=40
  ENDDO
END SUBROUTINE
END MODULE



PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(ty),ALLOCATABLE :: ty_obj1(:,:,:)
TYPE(ty) :: ty_obj2(2,1,8)
ty_obj2%ii=10
ty_obj2(2,1,8)%ii=30
ALLOCATE(ty_obj1,SOURCE=ty_obj2)
ty_obj1=ty_obj2
IF(ty_obj1(2,1,8)%ii .NE. 30) print*,201
DEALLOCATE(ty_obj1)
END
