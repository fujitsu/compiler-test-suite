module mod1
  use, intrinsic :: ISO_C_BINDING
  type, bind(C) :: SwigClassWrapper
     type(C_PTR), public :: cptr = C_NULL_PTR
     integer(C_INT), public :: cmemflags = 0
  end type SwigClassWrapper
  type (SwigClassWrapper),allocatable ::mod1_str
end module mod1
module mod2
  use, intrinsic :: ISO_C_BINDING
  type, bind(C) :: SwigClassWrapper
     type(C_PTR), public :: cptr = C_NULL_PTR
     integer(C_INT), public :: cmemflags = 0
  end type SwigClassWrapper
  type ty1
     type (SwigClassWrapper),allocatable :: str
  endtype ty1
  type (ty1),allocatable :: mod2_str
end module mod2

use mod1
use mod2
allocate(mod1_str)
allocate(mod2_str)
allocate(mod2_str%str,source=mod1_str)
deallocate(mod1_str)
allocate(mod1_str,source=mod2_str%str)
print *,"sngtbind_17:pass" 
end

