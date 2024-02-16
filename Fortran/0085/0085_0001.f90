MODULE bhd

USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR, C_INTPTR_T, C_SIZE_T
IMPLICIT NONE
PRIVATE
PUBLIC :: z_1, z_2, z_3, z_4
INTERFACE
SUBROUTINE z_1(yz1,yz2,diff) BIND(c,NAME="z_1")

IMPORT :: C_PTR, C_INTPTR_T

IMPLICIT NONE

TYPE(C_PTR), VALUE :: yz1
TYPE(C_PTR), VALUE :: yz2
INTEGER(KIND=C_INTPTR_T) :: diff

END SUBROUTINE
END INTERFACE

INTERFACE
FUNCTION z_2() BIND(c,NAME="z_2")

IMPORT :: C_SIZE_T

IMPLICIT NONE

INTEGER(KIND=C_SIZE_T) :: z_2

END FUNCTION
END INTERFACE

INTERFACE
FUNCTION z_3(yz1) BIND(c,NAME="z_3")

IMPORT :: C_PTR, C_INTPTR_T

IMPLICIT NONE

TYPE(C_PTR), VALUE       :: yz1
INTEGER(KIND=C_INTPTR_T) :: z_3

END FUNCTION
END INTERFACE

INTERFACE
FUNCTION z_4(yz1,dis) BIND(c,NAME="z_4")

IMPORT :: C_PTR, C_INTPTR_T

IMPLICIT NONE

TYPE(C_PTR),    VALUE    :: yz1
TYPE(C_PTR)              :: z_4
INTEGER(KIND=C_INTPTR_T) :: dis

END FUNCTION
END INTERFACE

END MODULE

use bhd,only:z_1,z_2,z_3,z_4
call sub

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

SUBROUTINE z_1(yz1,yz2,diff) BIND(c,NAME="z_1")
USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR, C_INTPTR_T
IMPLICIT NONE
TYPE(C_PTR), VALUE :: yz1
TYPE(C_PTR), VALUE :: yz2
INTEGER(KIND=C_INTPTR_T) :: diff

END SUBROUTINE
