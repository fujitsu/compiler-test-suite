module m
  type ty
    real :: y=1
  end type

interface operator(+)
procedure ::p
end interface
contains
    function  p(a,b) result(r)
      logical::r
      type(ty), intent(in) :: a
      real   , intent(in) :: b
 if (a%y/=b) print *,1001
   r=.false.
    end 
end module

module m1
use m
implicit none
private::operator(+)
contains
  subroutine sub1()
implicit none
type(ty)::x
if (x+1.0) print *,1002
  end subroutine sub1
end 

use m1
call sub1

print *,'sngg830n : pass'
end

