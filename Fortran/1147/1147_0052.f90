module m10
  type x0
    integer::x01
    contains
      procedure:: t_prc02=>prc02z
      generic:: gen             => t_prc02
  end type
  type,extends(x0)::x1
    integer::x11
  end type
integer::kk
contains
 subroutine prc02z(x,y) 
   class(x0),intent(in)::x
   integer(1) ,intent(in)::y
   select type(x)
    type is(x1)
      kk=x%x01 + y + 1
   end select
 end subroutine
end
module m1
use m10
  private
  public::sub
  interface
     module subroutine sub()
     end subroutine
  end interface
end
submodule (m1) submod
contains
  module subroutine sub()
  implicit none
type (x1),target     :: v11t
class(x1),allocatable:: v11p
allocate(v11p)
v11p%x01=1
call v11p%gen(2_1) 
if (kk            /= 4) print *,'error-013',kk
  end subroutine
end submodule
use m1
call sub
print *,'sngg960n : pass'
end
