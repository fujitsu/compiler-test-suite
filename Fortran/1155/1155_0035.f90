module m2
  type x0
    integer::x01
    contains
      procedure:: t_prc02=>prc02
      generic:: gen =>             t_prc02
  end type
  type,extends(x0)::x1
    integer::x11
    contains
      procedure:: t_prc02=>prc03
      generic:: gen =>             t_prc02
  end type
  integer::flag
  private
  public::s1,x1,kk
contains
 subroutine prc02(x,y) 
   class(x0),intent(in)::x
   integer(1) ,intent(in)::y
 end subroutine
 subroutine prc03(x,y) 
   class(x1),intent(in)::x
   integer(1) ,intent(in)::y
 end subroutine
end
use m2,only:x1,kk
type (x1),target     :: v11t
class(x1),allocatable:: v11p
print *,'sngg543n : pass'
end
