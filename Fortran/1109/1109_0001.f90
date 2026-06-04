module mod1 
use, intrinsic :: ISO_C_BINDING
type, bind(C) :: tt
 type(C_PTR), public :: cptr = C_NULL_PTR
end type
type (tt),parameter ::mod1_str=tt()
end
module mod2                              
use, intrinsic :: ISO_C_BINDING          
type, bind(C) :: tt        
 type(C_PTR), public :: cptr = C_NULL_PTR 
end type
type (tt),parameter ::mod2_str=tt()
end
use mod1,only:mod1_str
use mod2
type(tt)::mod1_str3
parameter(mod1_str3= mod1_str)
if (c_associated(mod1_str3%cptr)) print *,'err'
print *,'sngtbind_01:pass'
end
