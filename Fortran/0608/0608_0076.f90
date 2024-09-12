MODULE mod1
IMPLICIT NONE

TYPE type1
  INTEGER :: hh=1
  INTEGER,allocatable :: alloc1
  CONTAINS
  FINAL::des1_scalar,des1_ele
END TYPE

TYPE type2
  INTEGER :: ii=2
  TYPE(type1):: cmp1_type1
  TYPE(type1):: cmp2_type1
  TYPE(type1):: cmp3_type1(2)
 INTEGER,allocatable :: alloc2
  CONTAINS
  FINAL::des2_scalar,des2_ele
END TYPE


TYPE type3
  INTEGER :: jj=3
  TYPE(type2) ::cmp1_type2(2)
  INTEGER,allocatable :: alloc3
  CONTAINS
  FINAL::des3
END TYPE


TYPE,EXTENDS(type3)::type4
  INTEGER :: kk=4
  INTEGER,allocatable :: alloc4
  CONTAINS
  FINAL::des4
END TYPE

TYPE type5
  TYPE(type4):: cmp_type4
END TYPE


CONTAINS
PURE SUBROUTINE des1_scalar(dmy)
  TYPE(type1),INTENT(INOUT)::dmy
  IF(ALLOCATED(dmy%alloc1))DEALLOCATE(dmy%alloc1)
END SUBROUTINE

PURE SUBROUTINE des1_ele(dmy)
  TYPE(type1),INTENT(INOUT)::dmy(:)
  IF(ALLOCATED(dmy(1)%alloc1))DEALLOCATE(dmy(1)%alloc1)
END SUBROUTINE

PURE SUBROUTINE des2_scalar(dmy)
  TYPE(type2),INTENT(INOUT)::dmy
  IF(ALLOCATED(dmy%alloc2))DEALLOCATE(dmy%alloc2)
END SUBROUTINE

PURE SUBROUTINE des2_ele(dmy)
  TYPE(type2),INTENT(INOUT)::dmy(:)
  IF(ALLOCATED(dmy(1)%alloc2))DEALLOCATE(dmy(1)%alloc2)
END SUBROUTINE

PURE SUBROUTINE des3(dmy)
  TYPE(type3),INTENT(INOUT)::dmy
  IF(ALLOCATED(dmy%alloc3))DEALLOCATE(dmy%alloc3)
END SUBROUTINE

PURE SUBROUTINE des4(dmy)
  TYPE(type4),INTENT(INOUT)::dmy
  IF(ALLOCATED(dmy%alloc4))DEALLOCATE(dmy%alloc4)
END SUBROUTINE

PURE INTEGER FUNCTION fun(dmy)
  TYPE(type5),INTENT(IN)::dmy(:,:,:)
  fun=dmy(1,1,2)%cmp_type4%kk+6
END FUNCTION

PURE FUNCTION fun2()
TYPE(type5),POINTER :: fun2(:,:,:)
TYPE(type4) :: type4_obj1
ALLOCATE(fun2(1,1,2))
fun2%cmp_type4%kk=400
fun2%cmp_type4%jj=300
fun2%cmp_type4%cmp1_type2(1)%ii=800
fun2%cmp_type4%cmp1_type2(2)%ii=700
fun2%cmp_type4%cmp1_type2(1)%cmp1_type1%hh=200
fun2%cmp_type4%cmp1_type2(2)%cmp1_type1%hh=100
fun2%cmp_type4%cmp1_type2(1)%cmp2_type1%hh=600
fun2%cmp_type4%cmp1_type2(2)%cmp2_type1%hh=500
fun2%cmp_type4%cmp1_type2(1)%cmp3_type1(1)%hh=1900
fun2%cmp_type4%cmp1_type2(1)%cmp3_type1(2)%hh=1800
fun2%cmp_type4%cmp1_type2(2)%cmp3_type1(1)%hh=1700
fun2%cmp_type4%cmp1_type2(2)%cmp3_type1(2)%hh=1600
fun2%cmp_type4=type4_obj1
END FUNCTION
END MODULE 



PROGRAM MAIN
USE mod1
IMPLICIT NONE
call sub
CONTAINS
subroutine sub
  CHARACTER(LEN=fun(fun2())-5)::ch
  ch='TESTING-OK'
  IF(ch .eq. 'TESTI')PRINT*,'PASS'
END SUBROUTINE
END