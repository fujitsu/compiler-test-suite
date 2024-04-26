module pm
  type ty
    integer :: x=10
    character(10) :: c='1234567890'
  end type
end
 
module m
  use pm
  integer(4) :: a,b,c
  type(ty) :: t1,t2
end

use m
if (t1%x /= 10) print *,11
if (t1%c /= '1234567890') print *,21
if (t2%x /= 10) print *,12
if (t2%c /= '1234567890') print *,22
call sub
if (a /= 11) print *,3
if (b /= 22) print *,4
if (c /= 33) print *,5
print *,'pass'
end

subroutine sub
  use m
  a=11
  b=22
  c=33
end
