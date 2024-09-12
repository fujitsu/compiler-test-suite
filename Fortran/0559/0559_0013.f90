PROGRAM main
TYPE ty(k1,k2)
  INTEGER ,kind::k1,k2
  INTEGER::arr(k1:k2)
  CHARACTER(LEN=k2-k1)::ch
END TYPE

TYPE container
  TYPE(ty(2,5))::ty_obj(3) = ty(2,5)(101,'PDT')
END TYPE

type ctype
 type(container) :: con
end type

type(ctype) :: cc
integer :: i

do i=1,3
if(any(cc%con%ty_obj(i)%arr/=101) .or. lbound(cc%con%ty_obj(i)%arr,1)/=cc%con%ty_obj(i)%k1 .or.&
   ubound(cc%con%ty_obj(i)%arr,1)/=cc%con%ty_obj(i)%k2) PRINT*,cc%con%ty_obj(i)%arr,'i=',i
if(cc%con%ty_obj(i)%ch/='PDT' .or. len(cc%con%ty_obj(i)%ch)/=cc%con%ty_obj(i)%k2-cc%con%ty_obj(i)%k1) PRINT*,102
end do

print*,'pass'
END PROGRAM
