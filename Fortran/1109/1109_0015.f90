module mod2
  use, intrinsic :: ISO_C_BINDING
  private
  type, bind(C) :: ty
     type(C_PTR) :: cptr = C_NULL_PTR
  end type ty
  type, public :: tt
     type(ty), public :: mem
  end type tt
end module mod2
use mod2
  use, intrinsic :: ISO_C_BINDING
  type, bind(C) :: ty
     type(C_PTR) :: cptr = C_NULL_PTR
  end type ty
  type (ty) :: mod1_str
  type (tt) :: mod2_str
mod1_str = mod2_str%mem
print *,'sngtbind_22:pass'
end
