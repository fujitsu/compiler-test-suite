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
  type (proc) ::mod2_str
end module mod2
use mod1
use mod2
print *,'sngtbind_20:pass'
end
module m
  interface
     module subroutine sub(a)
       use mod1,only:proc
       type(proc) ::a
     end subroutine
  end interface
contains
  module subroutine sub(a) 
    use mod2,only:proc
    type(proc) ::a
  end subroutine
end module m
