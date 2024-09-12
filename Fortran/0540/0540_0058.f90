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
  public::x1
contains
 function   prc02z(x,y) result(kk)
   class(x0),intent(in)::x
   integer(1) ,intent(in)::y
   k=0
   select type(x)
    type is(x1)
      kk=x%x01 +  y+1
   k=1
    class default
   end select
if (k/=1) print *,2002
   flag=2
 end function
end
module d
contains 
subroutine s1(d1)
use m1
class(x1),allocatable:: d1
end subroutine
end
use d
use m1
class(x1),allocatable:: v00
allocate(v00)
v00%x01=1
if (v00%t_prc02(   2_1 )/= 4) print *,'error-004'

print *,'pass'
end
