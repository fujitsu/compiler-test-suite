module m1
  type  :: psb_lbase_sparse_mat
   contains
     procedure, pass(a) :: csgetptn => psb_lbase_csgetptn
     generic            :: csget => csgetptn
  end type psb_lbase_sparse_mat
  interface
     subroutine psb_lbase_csgetptn(a)
       import
       class(psb_lbase_sparse_mat), intent(in) :: a
     end subroutine psb_lbase_csgetptn
  end interface
  type, extends(psb_lbase_sparse_mat) :: psb_ld_base_sparse_mat
   contains
     procedure, pass(a) :: csgetrow => psb_ld_base_csgetrow
     generic            :: csget => csgetrow
  end type psb_ld_base_sparse_mat

  interface
     subroutine psb_ld_base_csgetrow(a,val)
       import
       class(psb_ld_base_sparse_mat), intent(in) :: a
       real(8), intent(inout) :: val
     end subroutine psb_ld_base_csgetrow
  end interface

  type, extends(psb_ld_base_sparse_mat) :: psb_ld_csr_sparse_mat
   contains
     procedure, pass(a) :: csgetptn => psb_ld_csr_csgetptn
  end type psb_ld_csr_sparse_mat

  interface
     subroutine psb_ld_csr_csgetptn(a)
       import
       class(psb_ld_csr_sparse_mat), intent(in) :: a
     end subroutine psb_ld_csr_csgetptn
  end interface
end
module km
use m1,only:psb_ld_csr_sparse_mat
  private
  public sub
  interface
     module subroutine sub
     end subroutine sub
  end interface
end

submodule(km)smod
contains
  module subroutine sub
  type(psb_ld_csr_sparse_mat) :: a
  real(8) :: valsnd
  call a%csget(valsnd)
end
end
use km
call sub
print *,'sngg982n : pass'
end program
     subroutine psb_lbase_csgetptn(a)
       use m1,only:psb_lbase_sparse_mat
       class(psb_lbase_sparse_mat), intent(in) :: a
     end subroutine psb_lbase_csgetptn
     subroutine psb_ld_base_csgetrow(a,val)
       use m1,only:psb_ld_base_sparse_mat
       class(psb_ld_base_sparse_mat), intent(in) :: a
       real(8), intent(inout) :: val
     end subroutine psb_ld_base_csgetrow
     subroutine psb_ld_csr_csgetptn(a)
       use m1,only:psb_ld_csr_sparse_mat
       class(psb_ld_csr_sparse_mat), intent(in) :: a
     end subroutine psb_ld_csr_csgetptn
