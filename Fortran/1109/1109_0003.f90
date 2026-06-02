module mod1 
use, intrinsic :: ISO_C_BINDING
type, bind(C) :: tt
 type(C_PTR), public :: cptr = C_NULL_PTR
end type
type (tt) ::mod1_str
end
module mod2                              
use, intrinsic :: ISO_C_BINDING          
type, bind(C) :: tt        
 type(C_PTR), public :: cptr = C_NULL_PTR 
end type
type (tt),pointer ::mod2_str
end
use mod1,only:tt,mod1_str
use mod2,only:mod2_str
use, intrinsic :: ISO_C_BINDING
allocate(tt::mod2_str)
call c_f_pointer(mod2_str%cptr,mod2_str)
if (c_associated(mod1_str%cptr)) print *,'err'
print *,'sngtbind_03:pass'
end
