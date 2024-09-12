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
  FINAL::des2,elem
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
  TYPE(type4):: cmp_type4
END TYPE


CONTAINS
SUBROUTINE des1(dmy)
  TYPE(type1),INTENT(INOUT)::dmy
  PRINT*,'des1 destructor called'
  PRINT*,dmy%hh
END SUBROUTINE

SUBROUTINE des2(dmy)
  TYPE(type2),INTENT(INOUT)::dmy
  PRINT*,'des2 destructor called'
  PRINT*,dmy%ii
END SUBROUTINE

SUBROUTINE elem(dmy)
  TYPE(type2),INTENT(INOUT)::dmy(:)
  PRINT*,'elem called'
  PRINT*,dmy(1)%ii
END SUBROUTINE

SUBROUTINE des3(dmy)
  TYPE(type3),INTENT(INOUT)::dmy
  PRINT*,'des3 destructor called'
  PRINT*,dmy%jj
END SUBROUTINE

SUBROUTINE des4(dmy)
  TYPE(type4),INTENT(INOUT)::dmy
  PRINT*,'des4 destructor called'
  PRINT*,dmy%kk
END SUBROUTINE

END MODULE 



PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(type5) :: type5_obj1(3)
TYPE(type4) :: type4_obj1

type5_obj1%cmp_type4%kk=400
type5_obj1%cmp_type4%jj=300

type5_obj1%cmp_type4%cmp_type2(1)%ii=290
type5_obj1%cmp_type4%cmp_type2(2)%ii=280

type5_obj1%cmp_type4%cmp_type2(1)%cmp_type1%hh=200
type5_obj1%cmp_type4%cmp_type2(2)%cmp_type1%hh=100


type5_obj1%cmp_type4=type4_obj1
IF(type5_obj1(1)%cmp_type4%kk .NE. 4) print*,201
END
