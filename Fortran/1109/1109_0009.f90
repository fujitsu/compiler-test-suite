module mod1
  use, intrinsic :: ISO_C_BINDING
  type, bind(C) :: proc
     type(C_PTR), public :: cptr = C_NULL_PTR
     integer(C_INT), public :: cmemflags = 0
  end type proc
  type (proc),target ::mod1_str
end module mod1
module mod2
  use, intrinsic :: ISO_C_BINDING
  use mod1,only:mod1_str
  type, bind(C) :: proc
     type(C_PTR), public :: cptr = C_NULL_PTR
     integer(C_INT), public :: cmemflags = 0
  end type proc
  type (proc),pointer :: str => mod1_str
end module mod2
print *,'sngtbind_15:pass'
end
