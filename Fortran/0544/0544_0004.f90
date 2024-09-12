module m2
  type x0
    integer::x01
    contains
      procedure:: t_prc02=>prc02
      generic:: gen             => t_prc02
  end type
  type,extends(x0)::x1
    integer::x11
  end type
contains
 subroutine  prc02(x,y)
   class(x0),intent(in)::x
   integer(1) ,intent(in)::y
 end subroutine
end
use m2
class(x0),allocatable:: v11
allocate(v11)
call v11%t_prc02( 2_1 )
call v11%gen(  2_1 )
print *,'pass'
end
