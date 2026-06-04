module mod1
  use, intrinsic :: ISO_C_BINDING
  type, bind(C) :: proc
     type(C_PTR), public :: cptr = C_NULL_PTR
     integer(C_INT), public :: cmemflags = 0
  end type proc
  type (proc), save ::mod1_str
end module mod1
module mod2
  use, intrinsic :: ISO_C_BINDING
  type, bind(C) :: proc
     type(C_PTR), public :: cptr = C_NULL_PTR
     integer(C_INT), public :: cmemflags = 0
  end type proc
  type ty1
     type (proc ) :: str
  endtype ty1
  type (ty1),save :: mod2_str
end module mod2
use mod1
use mod2
mod1_str = mod2_str%str
print *,"sngtbind_16:pass"
end

