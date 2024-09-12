module m1
interface operator(.x.)
  procedure f
end interface
type y
  integer:: v
end type 
contains
  pure function f(d1,d2) result(r)
  integer ::r
  type(y),intent(in):: d1,d2
  r=d1%v+d2%v
  end function
  subroutine sub(d1,d2)
  type(y),intent(in):: d1,d2
  integer:: a(  d1.x.d2 ) 
  if (size( a )/=4 ) print *,101
  a=[1,2,3,4]
  if (any(a/=[1,2,3,4])) print *,102
  end subroutine
end 
use m1
  type(y):: d1=y(1),d2=y(3)
  call sub(d1,d2)
if (d1%v/=1) print *,1011
if (d2%v/=3) print *,1012
print *,'pass'
end
