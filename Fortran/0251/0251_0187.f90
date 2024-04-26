MODULE mod1
TYPE ty
  INTEGER ::ii=2
  INTEGER,ALLOCATABLE ::jj
  CONTAINS
  FINAL::dest
END TYPE

CONTAINS
PURE SUBROUTINE dest(dmy)
  TYPE(ty),INTENT(INOUT)::dmy(:,:,:)
  IF(ALLOCATED(dmy(1,1,1)%jj))DEALLOCATE(dmy(1,1,1)%jj)
END SUBROUTINE

PURE FUNCTION fun(dmy)
  INTEGER::fun
  TYPE(ty),INTENT(IN)::dmy(2,1,3)
  fun=dmy(2,1,3)%ii
END FUNCTION

PURE FUNCTION fun1()
  TYPE(ty)::fun1(2,1,3)
  fun1%ii=1
  fun1(2,1,3)%ii=2
  ALLOCATE(fun1(2,1,3)%jj)
END FUNCTION
END MODULE


PROGRAM MAIN
USE mod1
IMPLICIT NONE
call sub
CONTAINS
subroutine sub

BLOCK
INTEGER::arr(2:7,3:9)
CHARACTER(LEN=SIZE(arr,fun(fun1()))+2)::aa
aa='TESTING-OK'
IF(aa .eq. 'TESTING-O')PRINT*,'PASS'
ENDBLOCK

end subroutine
END
