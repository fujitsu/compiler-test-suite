module mod1
  use, intrinsic :: ISO_C_BINDING
   type, bind(C) :: proc
    type(C_PTR), public :: cptr = C_NULL_PTR
   end type
   type (proc) ::mod1_str
end
module mod2
use, intrinsic :: ISO_C_BINDING
interface sss
module procedure sub
end interface
type, bind(C) :: proc
 type(C_PTR), public :: cptr = C_NULL_PTR
end type
type (proc) ::mod2_str
contains
subroutine sub(iii)
type (proc) :: iii
end
end
use mod1
use mod2
call sss(mod1_str)
print *,"sngtbind_18:pass"
end
