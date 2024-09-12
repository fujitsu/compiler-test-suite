PROGRAM main
TYPE ty(k1,k2)
  INTEGER ,kind::k1,k2
  INTEGER::arr(k1:k2)
  CHARACTER(LEN=k2-k1)::ch
END TYPE

TYPE container
  TYPE(ty(2,5))::ty_obj = ty(2,5)(101,'PDT')
END TYPE

type(container) :: con

if(any(con%ty_obj%arr/=101) .or. lbound(con%ty_obj%arr,1)/=con%ty_obj%k1 .or.&
   ubound(con%ty_obj%arr,1)/=con%ty_obj%k2) PRINT*,con%ty_obj%arr
if(con%ty_obj%ch/='PDT' .or. len(con%ty_obj%ch)/=con%ty_obj%k2-con%ty_obj%k1) PRINT*,102
print*,'pass'
END PROGRAM
