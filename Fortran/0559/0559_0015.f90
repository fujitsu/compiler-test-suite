MODULE mod1
TYPE ty(k1,k2)
  INTEGER ,KIND::k1,k2=5
  INTEGER::arr(k1:k2)
  CHARACTER(LEN=k2)::ch
END TYPE
END MODULE

MODULE mod2
USE mod1
TYPE::ty1
  TYPE(ty(2))::cmp_ty
END TYPE
END MODULE

PROGRAM main
USE mod2
TYPE(ty1),POINTER::ty_ptr(:)

type container
 TYPE(ty1)::ty1_obj(4) = [ty1(ty(2,5)(101,'PDT')),ty1(ty(2,5)(101,'PDT')),ty1(ty(2,5)(101,'PDT')),ty1(ty(2,5)(401,'RDT'))]
end type
 
type ctype
 type(container) :: con
end type

type(ctype),target :: cc

ty_ptr=>cc%con%ty1_obj
if(all(ty_ptr(4)%cmp_ty%arr==401))ty_ptr(4)%cmp_ty%arr=101
if(ty_ptr(4)%cmp_ty%ch=='RDT')ty_ptr(4)%cmp_ty%ch='PDT'

if(any(ty_ptr%cmp_ty%arr(2)/=101))print*,701,ty_ptr%cmp_ty%arr(2)
if(any(ty_ptr%cmp_ty%ch/='PDT') .or. len(ty_ptr%cmp_ty%ch)/=cc%con%ty1_obj%cmp_ty%k2)print*,102
print*,'pass'
END PROGRAM
