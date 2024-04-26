module mod1
type ty
   integer::ii
   integer,allocatable::jj
contains
   FINAL :: dest
end type

CONTAINS
PURE FUNCTION fun(dmy)
  TYPE(ty),INTENT(IN)::dmy   
  INTEGER::fun
  fun=dmy%ii  
  if(allocated(dmy%jj)) fun=dmy%ii+1 
END FUNCTION

PURE FUNCTION fun2()
  type(ty) :: fun2
  fun2%ii=8
  ALLOCATE(fun2%jj)
END FUNCTION
 
PURE subroutine dest(x)
   type(ty),INTENT(INOUT) :: x
   DEALLOCATE(x%jj)
end subroutine
END MODULE

PROGRAM main
USE mod1
call sub
CONTAINS
SUBROUTINE sub
  CHARACTER(LEN=9),POINTER::ch_ptr
  BLOCK
  CHARACTER(LEN=fun(fun2())),TARGET::ch_tar
   print*,len(ch_tar)
  ch_ptr=>ch_tar
  ch_tar='ABCDEFG-HIJ'
  IF(ch_ptr .eq. 'ABCDEFG-H')PRINT*,'PASS, finalization call verified from dump'
  END BLOCK
END SUBROUTINE  
END
