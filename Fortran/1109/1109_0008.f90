module mod1
  use, intrinsic :: ISO_C_BINDING
  type, bind(C) :: proc
     type(C_PTR), public :: cptr = C_NULL_PTR
     integer(C_INT), public :: cmemflags = 0
  end type proc
  type (proc) ::mod1_str
end module mod1
module mod2
  use, intrinsic :: ISO_C_BINDING
  use mod1 ,only:sss=>proc
  type, bind(C) :: proc
     type(C_PTR), public :: cptr = C_NULL_PTR
     integer(C_INT), public :: cmemflags = 0
  end type proc
  type ty1
     type (proc) :: str = sss(C_NULL_PTR,1)
  endtype ty1
  type (ty1) :: mod2_str
end module mod2
print *,'sngtbind_13:pass'
end
