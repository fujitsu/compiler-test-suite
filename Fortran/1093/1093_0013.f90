 INTERFACE dbcsr_distribution_new
  SUBROUTINE dbcsr_distribution_new_obj(rr)
  END SUBROUTINE dbcsr_distribution_new_obj
  SUBROUTINE dbcsr_distribution_new_low(col_dist_tmp)
   !INTEGER, DIMENSION(:), POINTER, intent(in)         :: col_dist_tmp!, row_dist_tmp
   INTEGER,  POINTER, intent(in)         :: col_dist_tmp!, row_dist_tmp
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
      CALL dbcsr_distribution_new(2.0)
if (1.eq.2)       CALL dbcsr_distribution_new(p%ii)   ! err 
if (1.eq.2)       CALL dbcsr_distribution_new(pp%ii)   ! err 
print *,'pass'
 end


  SUBROUTINE dbcsr_distribution_new_obj(rr)
    
  END SUBROUTINE dbcsr_distribution_new_obj
  SUBROUTINE dbcsr_distribution_new_low(col_dist_tmp)
   !INTEGER, DIMENSION(:), POINTER, intent(in)         :: col_dist_tmp!, row_dist_tmp
   INTEGER, DIMENSION(:), POINTER, intent(in)         :: col_dist_tmp!, row_dist_tmp
  end SUBROUTINE
