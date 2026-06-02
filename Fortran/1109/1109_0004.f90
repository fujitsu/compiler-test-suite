module mod1
  use, intrinsic :: ISO_C_BINDING
  type, bind(C) :: tt
     type(C_PTR), public :: cptr = C_NULL_PTR
!     integer(C_INT), public :: cmemflags = 0
  end type tt
  type (tt) ::mod1_str
end module mod1
module mod2
  use, intrinsic :: ISO_C_BINDING
  use mod1 ,only:ttt=>tt
  type, bind(C) :: tt
     type(C_PTR), public :: cptr = C_NULL_PTR
 !    integer(C_INT), public :: cmemflags = 0
  end type tt
  type ty1
     type (tt) :: mod0_str = ttt(C_NULL_PTR)
  endtype ty1
  type (ty1) :: mod2_str
end module mod2
use mod1
use mod2

if (c_associated(mod1_str%cptr)) print *,'err'
print *,'sngtbind_04:pass'
end
