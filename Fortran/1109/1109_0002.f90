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
type (tt) ::mod2_str
end
use mod1
use mod2
mod1_str = mod2_str
if (c_associated(mod1_str%cptr)) print *,'err'
print *,'sngtbind_02:pass'
end
