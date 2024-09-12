module m1
  type x0
    integer::x01
    contains
      procedure:: t_prc02=>prc02z
      generic:: gen             => t_prc02
  end type
  type,extends(x0)::x1
    integer::x11
  end type
  integer::flag
  private
  public::x0
contains
 subroutine prc02z(x,y) 
 entry      prc02(x,y) 
   class(x0),intent(in)::x
   integer(1) ,intent(in)::y
      print *,'Incorrect'
   select type(x)
    type is(x1)
      kk=x%x01 + y + 1
   end select
   flag=2
 end subroutine
end
module m2
  type x0
    integer::x01
    contains
      procedure:: t_prc02=>prc02
      generic:: gen =>             t_prc02
  end type
  type,extends(x0)::x1
    integer::x11
  end type
  integer::flag
  private
  public::s1,x1,kk
contains
 subroutine prc02z(x,y) 
 entry      prc02(x,y) 
   class(x0),intent(in)::x
   integer(1) ,intent(in)::y
   select type(x)
    type is(x1)
      kk=x%x01 + y + 1
   end select
   flag=2
 end subroutine
end
use m1
use m2,only:x1,kk
class(x1),allocatable:: v11
allocate(v11)
v11%x01=1
call v11%gen(2_1) 
if (kk            /= 4) print *,'error-013',kk
print *,'pass'
end
