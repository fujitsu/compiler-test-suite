MODULE mod1
TYPE ty(k1,k2)
  INTEGER ,KIND::k1,k2=5
  INTEGER::arr(k1:k2)
  CHARACTER(LEN=k2)::ch
END TYPE
END MODULE

MODULE mod2
USE mod1
TYPE::ty1(k)
  INTEGER,KIND :: k
  TYPE(ty(k))::cmp_ty
END TYPE
END MODULE

PROGRAM main
USE mod2
TYPE(ty(2,5)),POINTER::ty_ptr
type container
 TYPE(ty1(2))::ty1_obj(5) = ty1(2)(ty(2,5)(101,'PDT'))
end type

type(container),target :: con

ty_ptr=>con%ty1_obj(5)%cmp_ty
if(any(ty_ptr%arr/=101))print*,101
if(ty_ptr%ch/='PDT' .or. len(ty_ptr%ch)/=con%ty1_obj(5)%cmp_ty%k2)print*,102
print*,'pass'
END PROGRAM
