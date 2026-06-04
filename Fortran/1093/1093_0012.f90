 INTERFACE dbcsr_distribution_new
  SUBROUTINE dbcsr_distribution_new_obj(ii)
  END SUBROUTINE dbcsr_distribution_new_obj
  SUBROUTINE dbcsr_distribution_new_low(col_dist_tmp)
   !INTEGER, DIMENSION(:), POINTER, intent(in)         :: col_dist_tmp!, row_dist_tmp
   INTEGER, DIMENSION(:), POINTER, intent(in)         :: col_dist_tmp!, row_dist_tmp
  end SUBROUTINE
 END INTERFACE dbcsr_distribution_new

integer,target :: i1
integer,pointer:: ip
type ty1
 integer :: ii
end type 
type(ty1) ,pointer :: p
type(ty1) ,target  :: pp

if (1.eq.2)       CALL dbcsr_distribution_new(i1)   ! err 
if (1.eq.2)       CALL dbcsr_distribution_new(ip)
if (1.eq.2)       CALL dbcsr_distribution_new(ii)
if (1.eq.2)       CALL dbcsr_distribution_new(22)
if (1.eq.2)       CALL dbcsr_distribution_new(ifun())
if (1.eq.2)       CALL dbcsr_distribution_new(jfun())
if (1.eq.2)       CALL dbcsr_distribution_new(p%ii)   ! err 
if (1.eq.2)       CALL dbcsr_distribution_new(pp%ii)   ! err 
print *,'pass'
contains
function ifun() result(iiii)
pointer :: iiii
end function
function jfun() result(iiii)
target  :: iiii
end function
 end


  SUBROUTINE dbcsr_distribution_new_obj(ii)
    
  END SUBROUTINE dbcsr_distribution_new_obj
  SUBROUTINE dbcsr_distribution_new_low(col_dist_tmp)
   !INTEGER, DIMENSION(:), POINTER, intent(in)         :: col_dist_tmp!, row_dist_tmp
   INTEGER, DIMENSION(:), POINTER, intent(in)         :: col_dist_tmp!, row_dist_tmp
  end SUBROUTINE
