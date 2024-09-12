MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  CONTAINS
    FINAL::destructor1
    FINAL::destructor3
END TYPE

CONTAINS
SUBROUTINE destructor1(dmy)
  TYPE(ty),INTENT(INOUT)::dmy
  PRINT*,'DESTRUCTOR 1'
    PRINT*,601
END SUBROUTINE
SUBROUTINE destructor3(dmy)
  TYPE(ty),INTENT(INOUT)::dmy(:,:,:)
  PRINT*,'DESTRUCTOR 3'
  DO WHILE(dmy(2,8,1)%ii .EQ. 30)
    PRINT*,dmy(2,8,1)%ii
    dmy(2,8,1)%ii=40
  ENDDO
END SUBROUTINE
END MODULE 



PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(ty),ALLOCATABLE :: ty_obj1(:,:,:)
ALLOCATE(ty::ty_obj1(2,8,1))
ty_obj1%ii=100
ty_obj1(2,8,1)%ii=30
DEALLOCATE(ty_obj1)
END
