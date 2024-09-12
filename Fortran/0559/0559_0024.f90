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

TYPE,EXTENDS(ty1) :: ety(k)
 integer,kind :: k
 logical ::l (k)
END TYPE
END MODULE

PROGRAM main
USE mod2
TYPE(ty(2,5)),POINTER::ty_ptr
TYPE(ety(2)),TARGET::ety_obj = ety(2)(ty(2,5)(101,'PDT'),.true.)
ty_ptr=>ety_obj%cmp_ty
if(any(ty_ptr%arr/=101))print*,101
if(ty_ptr%ch/='PDT' .or. len(ty_ptr%ch)/=ety_obj%cmp_ty%k2)print*,102
if(all(ety_obj%l .eqv. .true.) .and. (ety_obj%k==2)) print*,'pass'
END PROGRAM
