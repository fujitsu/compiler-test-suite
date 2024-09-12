MODULE mod1
IMPLICIT NONE

TYPE type1
  INTEGER :: hh=1
  CONTAINS
  FINAL::des1
END TYPE

TYPE type2
  INTEGER :: ii=2
  TYPE(type1):: cmp_type1
  CONTAINS
  FINAL::des2_scalar
END TYPE


TYPE type3
  INTEGER :: jj=3
  TYPE(type2) ::cmp_type2(2)
  CONTAINS
  FINAL::des3
END TYPE


TYPE,EXTENDS(type3)::type4
  INTEGER :: kk=4
  CONTAINS
  FINAL::des4
END TYPE

TYPE type5
  CLASS(*),ALLOCATABLE:: cmp_type4
END TYPE


CONTAINS
SUBROUTINE des1(dmy)
  TYPE(type1),INTENT(INOUT)::dmy
  PRINT*,'des1 destructor called'
  PRINT*,dmy%hh
END SUBROUTINE

SUBROUTINE des2_scalar(dmy)
  TYPE(type2),INTENT(INOUT)::dmy
  PRINT*,'des2_scalar destructor called'
  PRINT*,dmy%ii
END SUBROUTINE


SUBROUTINE des3(dmy)
  TYPE(type3),INTENT(INOUT)::dmy
  PRINT*,'des3 destructor called'
  PRINT*,dmy%jj
END SUBROUTINE

SUBROUTINE des4(dmy)
  TYPE(type4),INTENT(INOUT)::dmy
  PRINT*,'des4 destructor called'
  dmy%jj=70
END SUBROUTINE

END MODULE 



PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(type5) :: type5_obj1(3)
TYPE(type3) :: local
local%jj=300
local%cmp_type2(1)%ii=800
local%cmp_type2(2)%ii=700
local%cmp_type2(1)%cmp_type1%hh=200
local%cmp_type2(2)%cmp_type1%hh=100
ALLOCATE(type5_obj1(2)%cmp_type4,SOURCE=local)
DEALLOCATE(type5_obj1(2)%cmp_type4)
END
