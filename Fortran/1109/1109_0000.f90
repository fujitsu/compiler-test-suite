module mod1                               ! 1)
use, intrinsic :: ISO_C_BINDING 
type, bind(C) :: ty                       ! 2)
 type(C_PTR), public :: cptr = C_NULL_PTR ! 3)
end type
type (ty) ::mod1_str
end
module mod2                               ! 4)
use, intrinsic :: ISO_C_BINDING          
type, bind(C) :: ty                       ! 5)
 type(C_PTR), public :: cptr = C_NULL_PTR 
end type
type (ty) ::mod2_str
end
use mod1
use mod2
mod1_str = mod2_str                       ! 6)
print *,'PH20401:pass'
end
