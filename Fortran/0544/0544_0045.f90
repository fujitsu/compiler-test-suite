module m1
  type x0
    integer::x01
    contains
      procedure:: t_prc02=>prc02z
      generic:: operator(.add.) => t_prc02
  end type
  type,extends(x0)::x1
    integer::x11
  end type
  integer::flag
  private
  public::x0
contains
 function   prc02z(x,y) result(kk)
   class(x0),intent(in)::x
   integer(1) ,intent(in)::y
      print *,'Incorrect'
   flag=2
 end function
end
module m2
  type x0
    integer::x01
    contains
      procedure:: t_prc02=>prc02
      generic:: operator(.add.) => t_prc02
  end type
  type,extends(x0)::x1
    integer::x11
  end type
  integer::flag
  private
  public::s1,x1
contains
 function   prc02(x,y) result(kk)
   class(x0),intent(in)::x
   integer(1) ,intent(in)::y
   select type(x)
    type is(x1)
      kk=x%x01 + y + 1
   end select
   flag=2
 end function
end
use m1
use m2,only:x1
class(x1),allocatable:: v11
allocate(v11)
v11%x01=1
nn=  v11.add.2_1 
if (nn            /= 4) print *,'error-013',nn
nn=  v11%t_prc02(2_1)
if (nn            /= 4) print *,'error-014',nn

print *,'pass'
end