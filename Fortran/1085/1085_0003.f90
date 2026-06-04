module  mm
  type  :: psb_lbase_sparse_mat_1
   contains
     procedure, pass(a) :: csgetptn => psb_lbase_csgetptn
     generic            :: csget => csgetptn
  end type 

  interface
     subroutine psb_lbase_csgetptn(a)
       import
       class(psb_lbase_sparse_mat_1), intent(in) :: a
     end subroutine psb_lbase_csgetptn
  end interface

  type, extends(psb_lbase_sparse_mat_1) :: psb_ld_base_sparse_mat_2
   contains
     procedure, pass(a) :: csgetrow => psb_ld_base_csgetrow
     generic            :: csget => csgetrow
  end type 

  interface
     subroutine psb_ld_base_csgetrow(a,val)
       import
       class(psb_ld_base_sparse_mat_2), intent(in) :: a
       real(8), intent(inout) :: val
     end subroutine psb_ld_base_csgetrow
  end interface

  type, extends(psb_ld_base_sparse_mat_2) :: psb_ld_csr_sparse_mat_3
   contains
     procedure, pass(a) :: csgetptn => psb_ld_csr_csgetptn
  end type 

  interface
     subroutine psb_ld_csr_csgetptn(a)
       import
       class(psb_ld_csr_sparse_mat_3), intent(in) :: a
     end subroutine psb_ld_csr_csgetptn
  end interface
end
     subroutine psb_ld_csr_csgetptn(a)
use mm
       class(psb_ld_csr_sparse_mat_3), intent(in) :: a
     end subroutine psb_ld_csr_csgetptn
     subroutine psb_ld_base_csgetrow(a,val)
use mm
       class(psb_ld_base_sparse_mat_2), intent(in) :: a
       real(8), intent(inout) :: val
     end subroutine psb_ld_base_csgetrow
     subroutine psb_lbase_csgetptn(a)
use mm
       class(psb_lbase_sparse_mat_1), intent(in) :: a
     end subroutine psb_lbase_csgetptn

use mm

  type(psb_ld_csr_sparse_mat_3) :: a
  real(8) :: valsnd
  call a%csget(valsnd)
print *,'pass'
end program

