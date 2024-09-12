MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER(KIND=8) :: ii=1
  CONTAINS
    FINAL::destructor1_ty,destructor2_ty
END TYPE

TYPE,EXTENDS(ty)::ty1
  INTEGER(KIND=8) :: jj=2
  CLASS(*),POINTER::unlim_ptr1(:)
  CLASS(*),ALLOCATABLE::unlim_alloc1(:,:)
  CONTAINS
    FINAL::destructor1_ty1,destructor2_ty1
END TYPE

TYPE,EXTENDS(ty1) :: ty2
  INTEGER(KIND=8)::kk=3
  CLASS(*),ALLOCATABLE :: unlim_cmp1(:,:,:,:)
  CLASS(*),POINTER :: unlim_cmp2
  CLASS(*),ALLOCATABLE :: unlim_cmp3
  TYPE(ty1) :: ty1_cmp1(2,1)
  CLASS(ty1),ALLOCATABLE :: ty1_cmp2(:,:)
  CLASS(ty1),POINTER :: ty1_cmp3(:,:)
  TYPE(ty1) :: ty1_cmp4
  CONTAINS
    FINAL::destructor1_ty2
END TYPE

TYPE,EXTENDS(ty2)::ty3
  TYPE(ty2)::ty2_cmp
END TYPE

CONTAINS
SUBROUTINE destructor1_ty(dmy)
  TYPE(ty)::dmy
  PRINT*,'ty SCALAR DESTRUCTOR'
  PRINT*,dmy%ii
END SUBROUTINE
SUBROUTINE destructor2_ty(dmy)
  TYPE(ty)::dmy(*)
  PRINT*,'ty ARRAY DESTRUCTOR'
  PRINT*,dmy(1)%ii,dmy(2)%ii
END SUBROUTINE
SUBROUTINE destructor1_ty1(dmy)
  TYPE(ty1)::dmy
  PRINT*,'ty1 SCALAR DESTRUCTOR'
  PRINT*,dmy%jj
END SUBROUTINE
SUBROUTINE destructor2_ty1(dmy)
  TYPE(ty1)::dmy(*)
  PRINT*,'ty1 ARRAY DESTRUCTOR'
  PRINT*,dmy(1)%jj,dmy(2)%jj
END SUBROUTINE
SUBROUTINE destructor1_ty2(dmy)
  TYPE(ty2)::dmy
  PRINT*,'ty2 SCALAR DESTRUCTOR'
  PRINT*,dmy%kk
END SUBROUTINE
END MODULE 

PROGRAM MAIN
USE mod1
IMPLICIT NONE
CLASS(*),ALLOCATABLE  :: ty3_obj(:,:,:)
TYPE(ty1)::src1,src2,src3,src4,src5
TYPE(ty)::src11,src22,src33,src44
src1%jj=30
src2%jj=40
src3%jj=50
src4%jj=100
src5%jj=110
src11%ii=60
src22%ii=70
src33%ii=80
src44%ii=90
ALLOCATE(ty3::ty3_obj(2,1,1))
SELECT TYPE(ty3_obj)
  TYPE IS(ty)
    PRINT*,201
  TYPE IS(ty3)
    ty3_obj(1,1,1)%ty2_cmp%kk=10
    ty3_obj(2,1,1)%ty2_cmp%kk=20
    ALLOCATE(ty3_obj(1,1,1)%ty2_cmp%unlim_cmp1(2,1,1,1),SOURCE=src1)
    ALLOCATE(ty3_obj(1,1,1)%ty2_cmp%unlim_cmp2,SOURCE=src2)
    ALLOCATE(ty3_obj(1,1,1)%ty2_cmp%unlim_cmp3,SOURCE=src3)
    ALLOCATE(ty3_obj(1,1,1)%ty2_cmp%ty1_cmp1(1,1)%unlim_ptr1(2),SOURCE=src11)
    ALLOCATE(ty3_obj(1,1,1)%ty2_cmp%ty1_cmp1(1,1)%unlim_alloc1(1,1),SOURCE=src22)
    ALLOCATE(ty3_obj(1,1,1)%ty2_cmp%ty1_cmp1(2,1)%unlim_ptr1(3),SOURCE=src33)
    ALLOCATE(ty3_obj(1,1,1)%ty2_cmp%ty1_cmp1(2,1)%unlim_alloc1(1,1),SOURCE=src44)
    ALLOCATE(ty3_obj(1,1,1)%ty2_cmp%ty1_cmp2(1,2),SOURCE=src4)
    ALLOCATE(ty3_obj(1,1,1)%ty2_cmp%ty1_cmp3(1,2),SOURCE=src5)

    ALLOCATE(ty3_obj(2,1,1)%ty2_cmp%unlim_cmp1(2,1,1,1),SOURCE=src1)
    ALLOCATE(ty3_obj(2,1,1)%ty2_cmp%unlim_cmp2,SOURCE=src2)
    ALLOCATE(ty3_obj(2,1,1)%ty2_cmp%unlim_cmp3,SOURCE=src3)
    ALLOCATE(ty3_obj(2,1,1)%ty2_cmp%ty1_cmp1(1,1)%unlim_ptr1(2),SOURCE=src11)
    ALLOCATE(ty3_obj(2,1,1)%ty2_cmp%ty1_cmp1(1,1)%unlim_alloc1(1,1),SOURCE=src22)
    ALLOCATE(ty3_obj(2,1,1)%ty2_cmp%ty1_cmp1(2,1)%unlim_ptr1(3),SOURCE=src33)
    ALLOCATE(ty3_obj(2,1,1)%ty2_cmp%ty1_cmp1(2,1)%unlim_alloc1(1,1),SOURCE=src44)
    ALLOCATE(ty3_obj(2,1,1)%ty2_cmp%ty1_cmp2(1,2),SOURCE=src4)
    ALLOCATE(ty3_obj(2,1,1)%ty2_cmp%ty1_cmp3(1,2),SOURCE=src5)
END SELECT
DEALLOCATE(ty3_obj)
END
