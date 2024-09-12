MODULE mod1
IMPLICIT NONE

TYPE type1
  INTEGER :: hh=1
  CONTAINS
  FINAL::des1_scalar,des1_ele
END TYPE

TYPE type2
  INTEGER :: ii=2
  TYPE(type1):: cmp1_type1
  TYPE(type1):: cmp2_type1
  TYPE(type1):: cmp3_type1(2)
  CONTAINS
  FINAL::des2_scalar,des2_ele
END TYPE

TYPE type3
  INTEGER :: jj=3
  TYPE(type2) ::cmp1_type2(2)
  CONTAINS
  FINAL::des3
END TYPE

TYPE,EXTENDS(type3)::type4
  INTEGER :: kk=4
  CONTAINS
  FINAL::des4
END TYPE

TYPE type5
  CLASS(type3),POINTER:: cmp_type4
END TYPE

CONTAINS
SUBROUTINE des1_scalar(dmy)
  TYPE(type1),INTENT(INOUT)::dmy
  PRINT*,'des1_scalar destructor called'
  PRINT*,dmy%hh
END SUBROUTINE

SUBROUTINE des1_ele(dmy)
  TYPE(type1),INTENT(INOUT)::dmy(:)
  PRINT*,'des1_ele destructor called'
  PRINT*,dmy%hh
END SUBROUTINE

SUBROUTINE des2_scalar(dmy)
  TYPE(type2),INTENT(INOUT)::dmy
  PRINT*,'des2_scalar destructor called'
  PRINT*,dmy%ii
END SUBROUTINE

SUBROUTINE des2_ele(dmy)
  TYPE(type2),INTENT(INOUT)::dmy(:)
  PRINT*,'des2_ele destructor called'
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
  dmy%kk=70
END SUBROUTINE

END MODULE 

PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(type5),POINTER :: type5_obj1(:,:,:)

ALLOCATE(type5_obj1(1,1,2))
ALLOCATE(type4::type5_obj1(1,1,2)%cmp_type4)

type5_obj1(1,1,2)%cmp_type4%jj=300

type5_obj1(1,1,2)%cmp_type4%cmp1_type2(1)%ii=800
type5_obj1(1,1,2)%cmp_type4%cmp1_type2(2)%ii=700

type5_obj1(1,1,2)%cmp_type4%cmp1_type2(1)%cmp1_type1%hh=200
type5_obj1(1,1,2)%cmp_type4%cmp1_type2(2)%cmp1_type1%hh=100

type5_obj1(1,1,2)%cmp_type4%cmp1_type2(1)%cmp2_type1%hh=600
type5_obj1(1,1,2)%cmp_type4%cmp1_type2(2)%cmp2_type1%hh=500

type5_obj1(1,1,2)%cmp_type4%cmp1_type2(1)%cmp3_type1(1)%hh=1900
type5_obj1(1,1,2)%cmp_type4%cmp1_type2(1)%cmp3_type1(2)%hh=1800
type5_obj1(1,1,2)%cmp_type4%cmp1_type2(2)%cmp3_type1(1)%hh=1700
type5_obj1(1,1,2)%cmp_type4%cmp1_type2(2)%cmp3_type1(2)%hh=1600

DEALLOCATE(type5_obj1(1,1,2)%cmp_type4)
END
