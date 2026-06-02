module mod1
  use, intrinsic :: ISO_C_BINDING
  type, bind(C) :: proc
     type(C_PTR), public :: cptr = C_NULL_PTR
  end type proc
  type (proc) ::mod1_str
end module mod1
module mod2
  use, intrinsic :: ISO_C_BINDING
  type, bind(C) :: proc
     type(C_PTR), public :: cptr = C_NULL_PTR
  end type proc
  type (proc),pointer ::mod2_str
end module mod2
use mod1,only :proc
use mod2,only :mod2_str
allocate(proc::mod2_str)
print *,'sngtbind_12:pass'
deallocate(mod2_str)
end
