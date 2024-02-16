MODULE bhd

USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR, C_INTPTR_T, C_SIZE_T
IMPLICIT NONE
PRIVATE
PUBLIC :: z_1, z_2, z_3, z_4
INTERFACE
MODULE SUBROUTINE z_1(yz1,yz2,diff) BIND(c,NAME="z_1")
IMPLICIT NONE
TYPE(C_PTR), VALUE :: yz1
TYPE(C_PTR), VALUE :: yz2
INTEGER(KIND=C_INTPTR_T) :: diff
END SUBROUTINE

MODULE FUNCTION z_2() BIND(c,NAME="z_2")
IMPLICIT NONE
INTEGER(KIND=C_SIZE_T) :: z_2
END FUNCTION

MODULE FUNCTION z_3(yz1) BIND(c,NAME="z_3")
IMPLICIT NONE
TYPE(C_PTR), VALUE       :: yz1
INTEGER(KIND=C_INTPTR_T) :: z_3
END FUNCTION

MODULE FUNCTION z_4(yz1,dis) BIND(c,NAME="z_4")
IMPLICIT NONE
TYPE(C_PTR),    VALUE    :: yz1
TYPE(C_PTR)              :: z_4
INTEGER(KIND=C_INTPTR_T) :: dis
END FUNCTION
END INTERFACE
END MODULE

use bhd,only:z_1
use bhd,only:z_2
use bhd,only:z_3
use bhd,only:z_4
call sub
call sub1
call sub2
call sub3

print *,'pass'
end
subroutine sub
use bhd,only:z_1,z_2,z_3,z_4
USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR, C_INTPTR_T

IMPLICIT NONE

TYPE(C_PTR) :: yz1
TYPE(C_PTR) :: yz2
INTEGER(KIND=C_INTPTR_T) :: diff
call  z_1(yz1,yz2,diff)
end
subroutine sub1
use bhd,only:z_2
USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_SIZE_T
IMPLICIT NONE
if (z_2()/=1) print *,201
end
subroutine sub2
use bhd,only:z_3
USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR
IMPLICIT NONE
TYPE(C_PTR)       :: yz1
if (z_3(yz1)/=2) print *,301
end
subroutine sub3
use bhd,only:z_4
USE, INTRINSIC :: ISO_C_BINDING, ONLY:  C_PTR, C_INTPTR_T, C_LOC
IMPLICIT NONE
TYPE(C_PTR)              :: yz1
TYPE(C_PTR)              :: z_4x
INTEGER(KIND=C_INTPTR_T),target :: dis
yz1=c_loc(dis)
z_4x= z_4(yz1,dis) 
END 

submodule (bhd) smod
contains
MODULE procedure z_1
IMPLICIT NONE
END 

module procedure  z_2
IMPLICIT NONE
z_2=1
END

module procedure z_3
IMPLICIT NONE
z_3=2
END 

module procedure  z_4
IMPLICIT NONE
z_4=yz1
END
end
