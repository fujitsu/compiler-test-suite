module mod1

type com
  REAL::rr=2.0
  INTEGER,ALLOCATABLE::kk
contains
  FINAL :: final_com
end type

type ty
  integer::ii
  INTEGER,ALLOCATABLE::jj
  type(com)::com_obj
  contains
    FINAL :: final_ty
end type

CONTAINS
PURE FUNCTION fun_1(dmy)
  TYPE(ty),INTENT(IN)::dmy(2,3)
  INTEGER::fun_1
  fun_1=dmy(2,3)%ii          
END FUNCTION

PURE FUNCTION gun_2()
  type(ty) :: gun_2(2,3)     
  gun_2%ii=1
  gun_2(2,3)%ii=2
  gun_2%com_obj%rr=6.0
  ALLOCATE(gun_2(1,1)%jj)
  ALLOCATE(gun_2(1,1)%com_obj%kk)
END FUNCTION
 
PURE FUNCTION hun_3(dmy)
  TYPE(ty),INTENT(IN)::dmy(2,3) 
  INTEGER::hun_3
  hun_3=dmy(2,3)%ii            
END FUNCTION

PURE FUNCTION iun_4()
  type(ty) :: iun_4 (2,3)    
  iun_4%ii=1
  iun_4(2,3)%ii=2
  iun_4%com_obj%rr=5.0
  ALLOCATE(iun_4(1,1)%jj)
  ALLOCATE(iun_4(1,1)%com_obj%kk)
END FUNCTION


PURE subroutine final_ty(x)
   type(ty),INTENT(INOUT) :: x(*)
   IF(ALLOCATED(x(1)%jj)) DEALLOCATE(x(1)%jj)
end subroutine

PURE subroutine final_com(x)
   type(com),INTENT(INOUT) :: x
   IF(ALLOCATED(x%kk)) DEALLOCATE(x%kk)
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
