MODULE bhd

USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR, C_INTPTR_T, C_SIZE_T
IMPLICIT NONE
PRIVATE
PUBLIC :: z_r, z_yz, z_w, q_g_dis
INTERFACE
SUBROUTINE z_r(yz1,yz2,diff) BIND(c,NAME="z_r")

IMPORT :: C_PTR, C_INTPTR_T

IMPLICIT NONE

TYPE(C_PTR), VALUE :: yz1
TYPE(C_PTR), VALUE :: yz2
INTEGER(KIND=C_INTPTR_T) :: diff

END SUBROUTINE
END INTERFACE

INTERFACE
FUNCTION z_yz() BIND(c,NAME="z_yz")

IMPORT :: C_SIZE_T

IMPLICIT NONE

INTEGER(KIND=C_SIZE_T) :: z_yz

END FUNCTION
END INTERFACE

INTERFACE
FUNCTION z_w(yz1) BIND(c,NAME="z_w")

IMPORT :: C_PTR, C_INTPTR_T

IMPLICIT NONE

TYPE(C_PTR), VALUE       :: yz1
INTEGER(KIND=C_INTPTR_T) :: z_w

END FUNCTION
END INTERFACE

INTERFACE
FUNCTION q_g_dis(yz1,dis) BIND(c,NAME="q_g_dis")

IMPORT :: C_PTR, C_INTPTR_T

IMPLICIT NONE

TYPE(C_PTR),    VALUE    :: yz1
tYPE(C_PTR)              :: q_g_dis
INTEGER(KIND=C_INTPTR_T) :: dis

END FUNCTION
END INTERFACE

END MODULE

use bhd,only:z_r
print *,'pass'
end
