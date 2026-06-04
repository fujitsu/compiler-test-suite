module mod_BASE
  implicit none
interface operator(.INC.)
module procedure inc
end interface operator(.INC.)
!!!!!!$omp declare reduction (.INC.:integer:omp_out=omp_out.INC.omp_in) &
!!!!!!$omp         initializer(omp_priv=0)
!!!!!  type,public::user_type_t
!!!!!    integer::ip1
!!!!!  end type user_type_t
contains
integer function inc(a,b)
integer,intent(in) :: a,b
inc=a+b+1
end function
end module mod_BASE

module km
  use mod_BASE
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
        if ((1.INC.2)/=4) print *,1001
     end subroutine sub
end
use km
call omp_set_num_threads(2)
call sub

 print *,"sngg022o : pass"
end 
