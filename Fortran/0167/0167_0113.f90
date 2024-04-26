module m
  integer(4) :: a,b,c
  equivalence(a,b,c)
  private b
contains
  subroutine sub
    b=22
  end subroutine
end

use m
a=11
if (a /= 11) print *,2
if (c /= 11) print *,3
call sub
if (a /= 22) print *,5
if (c /= 22) print *,6
c=33
if (a /= 33) print *,8
if (c /= 33) print *,9
print *,'pass'
end

