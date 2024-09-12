module m1
  type x0
    integer::x01
  end type
  type,extends(x0)::x1
    integer::x11
  end type
  private
  public::x1,prc02z
contains
 function   prc02z(x,y) result(kk)
   class(x0),intent(in)::x
   integer(1) ,intent(in)::y
   k=0
   select type(x)
    type is(x1)
      kk=x%x01 +  y+1
   k=1
   end select
if (k/=1) print *,2002
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
if  (prc02z(v00,   2_1 )/= 4) print *,'error-004'

print *,'pass'
end
