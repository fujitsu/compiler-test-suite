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
integer :: i
TYPE(ty(2,5)),POINTER::ty_ptr(:)
TYPE(ty1(2)),TARGET::ty1_obj(4) = [ty1(2)(ty(2,5)(101,'PDT')),ty1(2)(ty(2,5)(102,'ODT')),&
                                   ty1(2)(ty(2,5)(103,'RDT')),ty1(2)(ty(2,5)(104,'KDT'))]
ty_ptr=>ty1_obj%cmp_ty

do i=1,4
 if(any(ty_ptr(i)%arr/=100+i))print*,101
 if(ty_ptr(1)%ch/='PDT' .or. len(ty_ptr(i)%ch)/=ty1_obj(i)%cmp_ty%k2)print*,102
end do
print*,'pass'
END PROGRAM
