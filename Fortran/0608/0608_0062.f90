module mod1

type ty
   integer::ii
   integer,allocatable::jj
contains
   FINAL :: final_ty
end type

CONTAINS
PURE FUNCTION fun_1(dmy)
  TYPE(ty),INTENT(IN)::dmy   
  INTEGER::fun_1
  fun_1=dmy%ii   
END FUNCTION

PURE FUNCTION gun_2()
  type(ty) :: gun_2
  gun_2%ii=2
  ALLOCATE(gun_2%jj)
END FUNCTION
 
PURE FUNCTION hun_3(dmy)
  TYPE(ty),INTENT(IN)::dmy    
  INTEGER::hun_3
  hun_3=dmy%ii            
END FUNCTION

PURE FUNCTION iun_4()
  type(ty) :: iun_4     
  iun_4%ii=2
  ALLOCATE(iun_4%jj)
END FUNCTION


PURE subroutine final_ty(x)
   type(ty),INTENT(INOUT) :: x
   IF(ALLOCATED(x%jj)) DEALLOCATE(x%jj)
end subroutine
END MODULE




PROGRAM main
USE mod1
call sub
CONTAINS
SUBROUTINE sub
  CHARACTER(LEN=9),POINTER::ch_ptr
  CHARACTER(LEN=7+fun_1(gun_2())+hun_3(iun_4())),TARGET::ch_tar
  ch_ptr=>ch_tar
  ch_tar='ABCDEFG-HIJ'
  IF(ch_ptr .eq. 'ABCDEFG-H')PRINT*,'PASS'
END SUBROUTINE  
END
