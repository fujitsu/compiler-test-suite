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
  private
  public::x0
contains
 subroutine  prc02z(x,y) 
   class(x0),intent(in)::x
   integer(1) ,intent(in)::y
      print *,'Incorrect'
 end subroutine
end
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
  integer::flag
  private
  public::s1,x1
contains
 subroutine  prc02(x,y)
   class(x0),intent(in)::x
   integer(1) ,intent(in)::y
 end subroutine
end
module m4
contains
subroutine s(v)
use m1
use m2,only:x1
class(x1),allocatable:: v
end
end
use m1
use m2,only:x1
use m4
class(x1),allocatable:: v11
allocate(v11)
call v11%gen(    2_1 )
print *,'pass'
end
