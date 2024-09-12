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
  FINAL::des2,elem
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

PURE SUBROUTINE des2(dmy)
  TYPE(type2),INTENT(INOUT)::dmy
  IF(ALLOCATED(dmy%alloc2))DEALLOCATE(dmy%alloc2)
END SUBROUTINE

PURE SUBROUTINE elem(dmy)
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
  TYPE(type5),INTENT(IN)::dmy(3)
  fun=dmy(1)%cmp_type4%kk+6
END FUNCTION
 
PURE FUNCTION fun1()
  TYPE(type5) :: fun1(3)
  TYPE(type4) :: type4_obj1
  fun1%cmp_type4%kk=400
  fun1%cmp_type4%jj=300
 
  fun1%cmp_type4%cmp_type2(1)%ii=290
  fun1%cmp_type4%cmp_type2(2)%ii=280
 
  fun1%cmp_type4%cmp_type2(1)%cmp_type1%hh=200
  fun1%cmp_type4%cmp_type2(2)%cmp_type1%hh=100

  fun1%cmp_type4=type4_obj1
END FUNCTION
END MODULE 



PROGRAM MAIN
USE mod1
IMPLICIT NONE
call sub
CONTAINS 
subroutine sub
  CHARACTER(LEN=fun(fun1())-5)::ch
  ch='TESTING-OK'
  IF(ch .eq. 'TESTI') PRINT*,'PASS'
END SUBROUTINE
END
