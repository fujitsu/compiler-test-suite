module m1
  type x0
    integer::x01
  end type
  type,extends(x0)::x1
    integer::x11
  end type
  private
  public::x1,sub   
end
module d
contains 
subroutine s1(d1)
use m1
class(x1),allocatable:: d1
end subroutine
end
use m1
use d
class(x1),allocatable:: v00
allocate(v00)
v00%x01=1
   k=0
   select type(v00)
    type is(x1)
   k=1
   end select
if (k/=1) print *,2002

print *,'pass'
end