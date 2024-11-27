module n12
  type x0
    integer::x01
    contains
      procedure:: t_prc02=>x2z
      generic:: operator(.add.) => t_prc02
  end type
  type,extends(x0)::x1
    integer::x11
  end type
  integer::flag
  private
  public::x1
contains
 function   x2z(x,y) result(kk)
   class(x0),intent(in)::x
   integer(1) ,intent(in)::y
print *,'incorrect'
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
use n12
use m2,x11=>x1
class(x11),allocatable:: v11
allocate(v11)
v11%x01=1
if ((v11.add.2_1 )/= 4) print *,'error-013' 
print *,'pass'
end
