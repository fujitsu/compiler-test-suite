PROGRAM main
TYPE ty(k1,k2)
  INTEGER ,kind::k1,k2
  INTEGER::arr(k1:k2)
  CHARACTER(LEN=k2-k1)::ch
END TYPE

TYPE(ty(2,5))::ty_obj = ty(2,5)(101,'PDT')

if(any(ty_obj%arr/=101) .or. lbound(ty_obj%arr,1)/=ty_obj%k1 .or.&
   ubound(ty_obj%arr,1)/=ty_obj%k2) PRINT*,ty_obj%arr
if(ty_obj%ch/='PDT' .or. len(ty_obj%ch)/=ty_obj%k2-ty_obj%k1) PRINT*,102
print*,'pass'
END PROGRAM
