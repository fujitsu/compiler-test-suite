PROGRAM main
TYPE ty(k1,k2)
  INTEGER ,kind::k1,k2
  INTEGER::arr(k1:k2)
  CHARACTER(LEN=k2-k1)::ch
END TYPE

TYPE(ty(2,5))::ty_obj(3) = [ty(2,5)(101,'PDT'),ty(2,5)(202,'CDT'),ty(2,5)(203,'LDT')]

if(any(ty_obj(1)%arr/=101) .or. lbound(ty_obj(1)%arr,1)/=ty_obj%k1 .or.&
   ubound(ty_obj(1)%arr,1)/=ty_obj(1)%k2) PRINT*,ty_obj(1)%arr

if(ty_obj(1)%ch/='PDT' .or. len(ty_obj(1)%ch)/=ty_obj(1)%k2-ty_obj(1)%k1) PRINT*,102

if(any(ty_obj(2)%arr/=202) .or. lbound(ty_obj(2)%arr,1)/=ty_obj(2)%k1 .or.&
   ubound(ty_obj(2)%arr,1)/=ty_obj(2)%k2) PRINT*,ty_obj(2)%arr

if(ty_obj(2)%ch/='CDT' .or. len(ty_obj(2)%ch)/=ty_obj(2)%k2-ty_obj(2)%k1) PRINT*,103

if(any(ty_obj(3)%arr/=203) .or. lbound(ty_obj(3)%arr,1)/=ty_obj(3)%k1 .or.&
   ubound(ty_obj(3)%arr,1)/=ty_obj(3)%k2) PRINT*,ty_obj(3)%arr

if(ty_obj(3)%ch/='LDT' .or. len(ty_obj(3)%ch)/=ty_obj(3)%k2-ty_obj(3)%k1) PRINT*,104
print*,'pass'
END PROGRAM
