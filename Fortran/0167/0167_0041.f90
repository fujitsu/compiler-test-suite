module pm
  type ty
     sequence
    integer :: x=10
    character(10) :: c='1234567890'
  end type
end

module m
  use pm
  integer(4) :: a,b,c
  type(ty) :: t1,t2
  equivalence(a,b,c,t1,t2)
end

use m
if (t1%x /= 10) print *,11
if (t1%c /= '1234567890') print *,21
if (t2%x /= 10) print *,12
if (t2%c /= '1234567890') print *,22
if (a/=10) print *,31
if (b/=10) print *,32
if (c/=10) print *,33
call sub
if (a /= 22) print *,41
if (b /= 22) print *,42
if (c /= 22) print *,43
if (t1%x /= 22) print *,44
if (t1%c /= '1234567890') print *,45
if (t2%x /= 22) print *,46
if (t2%c /= '1234567890') print *,47

print *,'pass'
end

subroutine sub
  use m
  b=22
end
