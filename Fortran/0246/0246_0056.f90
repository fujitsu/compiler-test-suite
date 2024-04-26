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
IMPLICIT NONE
INTEGER :: K,L,X
CHARACTER(LEN=9)::result_sub

X=0
DO CONCURRENT(K=1:3,L=5:1:MAX(-4,-7))
  result_sub=sub()
  IF(result_sub .eq. 'F')X=X+1
END DO

IF(X==6) THEN
  Print *,"PASS"
ELSE
  Print *,result_sub,X
END IF
CONTAINS
PURE CHARACTER FUNCTION sub()
  CHARACTER(LEN=9),POINTER::ch_ptr
  CHARACTER(LEN=7+fun_1(gun_2())+hun_3(iun_4())),TARGET::ch_tar
  ch_ptr=>ch_tar
  ch_tar='FORTRAN 90!'
  sub=ch_ptr
END FUNCTION
END
