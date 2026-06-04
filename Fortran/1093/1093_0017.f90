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
type(ty1) ,pointer :: p(:)
integer ,pointer :: pa(:)
!integer ,pointer :: pb
integer ,target  :: pp!(10)

!      CALL dbcsr_distribution_new(pb)   ! err 
      CALL dbcsr_distribution_new(2.0)
if (1.eq.2)       CALL dbcsr_distribution_new(pa(1))   ! err 
if (1.eq.2)       CALL dbcsr_distribution_new(pp)   ! err 
print *,'pass'
 end


  SUBROUTINE dbcsr_distribution_new_obj(rr)
    
  END SUBROUTINE dbcsr_distribution_new_obj
  SUBROUTINE dbcsr_distribution_new_low(col_dist_tmp)
   !INTEGER, DIMENSION(:), POINTER, intent(in)         :: col_dist_tmp!, row_dist_tmp
   INTEGER, DIMENSION(:), POINTER, intent(in)         :: col_dist_tmp!, row_dist_tmp
  end SUBROUTINE
