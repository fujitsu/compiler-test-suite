MODULE mod1
IMPLICIT NONE

TYPE type1
  INTEGER :: hh=1
  INTEGER,allocatable :: alloc1
  CONTAINS
  FINAL::des1
END TYPE

TYPE type2
  INTEGER :: ii=2
  TYPE(type1):: cmp_type1
 INTEGER,allocatable :: alloc2
  CONTAINS
  FINAL::des2_scalar,des2_ele
END TYPE


TYPE type3
  INTEGER :: jj=3
  TYPE(type2) ::cmp_type2(2)
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
PURE SUBROUTINE des1(dmy)
  TYPE(type1),INTENT(INOUT)::dmy
  IF(ALLOCATED(dmy%alloc1))DEALLOCATE(dmy%alloc1)
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
  TYPE(type5),INTENT(IN) :: dmy
  fun=dmy%cmp_type4%kk
END FUNCTION

PURE FUNCTION fun1()
  TYPE(type5),POINTER :: fun1
  TYPE(type4) :: type4_obj1
  ALLOCATE(fun1)
  fun1%cmp_type4%kk=400
  fun1%cmp_type4%jj=300
  fun1%cmp_type4%cmp_type2(1)%ii=800
  fun1%cmp_type4%cmp_type2(2)%ii=700
  fun1%cmp_type4%cmp_type2(1)%cmp_type1%hh=200
  fun1%cmp_type4%cmp_type2(2)%cmp_type1%hh=100
  fun1%cmp_type4=type4_obj1
END FUNCTION
END MODULE 




PROGRAM MAIN
USE mod1
IMPLICIT NONE
call sub
contains
subroutine sub
INTEGER::arr(2:11,3:8)
CHARACTER(LEN=UBOUND(arr,fun(fun1())-2)-2)::aa
aa='ABCDEFG-HIJ'
IF(aa .eq. 'ABCDEF') PRINT*,'PASS'
END SUBROUTINE
END
