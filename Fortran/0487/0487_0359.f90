MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  CONTAINS
    FINAL::destructor4
    FINAL::destructor3
    FINAL::destructor
    FINAL::destructor1
END TYPE

CONTAINS
SUBROUTINE destructor(dmy)
  TYPE(ty)::dmy(2,3,3)
  write(1,*)dmy(2,3,3)%ii
END SUBROUTINE
SUBROUTINE destructor4(dmy)
  TYPE(ty)::dmy(*)
  PRINT*,'INSIDE 4'
  PRINT*,dmy(18)%ii
END SUBROUTINE
SUBROUTINE destructor3(dmy)
  TYPE(ty)::dmy(:,:,:,:,:,:)
  write(1,*),dmy(2,1,2,5,4,6)%ii
END SUBROUTINE
SUBROUTINE destructor1(dmy)
  TYPE(ty)::dmy
  PRINT*,'INSIDE 1'
  PRINT*,401
END SUBROUTINE
END MODULE 

PROGRAM MAIN
USE mod1
IMPLICIT NONE
integer::k
TYPE(ty),pointer     :: ty_obj1(:,:,:,:,:,:)
TYPE(ty),pointer ::ty_obj2(:,:,:,:,:,:)
TYPE(ty),pointer ::x(:,:,:),y(:,:,:)
allocate(ty_obj2(2,1,3,5,4,6))
ALLOCATE(ty::ty_obj1(2,1,7:9,5,4,6))
ty_obj1%ii=5
ty_obj1(2,1,8:9,5,2:4,4:6)%ii=10
ty_obj1(2,1,9,5,4,6)%ii=16
ty_obj2%ii=20
ty_obj2(2,1,2:3,5,2:4,4:6)%ii=40
x=>ty_obj1(2,1,8:9,5,2:4,4:6)
y=>ty_obj2(2,1,2:3,5,2:4,4:6)
x=y
IF(ty_obj1(2,1,8,5,4,6)%ii .NE. 40) print*,201
DEALLOCATE(ty_obj1)
rewind 1
read(1,*) k
if (k/=16) print *,301
read(1,*) k
if (k/=40) print *,301
print *,'pass'
END
