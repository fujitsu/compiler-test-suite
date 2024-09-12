MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  INTEGER,ALLOCATABLE :: ptr
  CONTAINS
    FINAL::destructor
    FINAL::destructor1
END TYPE

CONTAINS
SUBROUTINE destructor1(dmy)
  TYPE(ty),INTENT(INOUT)::dmy
  PRINT*,'scalar destructor called'
  PRINT*,dmy%ii
END SUBROUTINE

SUBROUTINE destructor(dmy)
  TYPE(ty),INTENT(INOUT)::dmy(*)
  PRINT*,'assume size destructor called'
  PRINT*,dmy(1)%ii,dmy(2)%ii
END SUBROUTINE
END MODULE 



PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(ty),ALLOCATABLE :: ty_obj1(:,:,:)
TYPE(ty) :: ty_obj2
INTEGER::v(2:3)=(/6,7/)
ty_obj2%ii=10
ALLOCATE(ty_obj1(2,1,8),SOURCE=ty_obj2)
ty_obj1(2,1,6)%ii=30
ty_obj1(2,1,7)%ii=40
ty_obj1(2,1,v)=[ty(10,300),ty(20,400)]
IF(ty_obj1(2,1,6)%ii .NE. 10) print*,201
print*, "assume size destructor called"
print*, "10 20"
print*, "scalar destructor called"
print*, 20
print*, "scalar destructor called"
print*, 10
END
