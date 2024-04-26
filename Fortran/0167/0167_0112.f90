module m
  integer(4) :: a,b,c
  equivalence(a,b,c)
  private a
contains
  subroutine sub
    a=11
  end subroutine
end

use m
call sub
if (b /= 11) print *,2
if (c /= 11) print *,3
b=22
if (b /= 22) print *,5
if (c /= 22) print *,6
c=33
if (b /= 33) print *,8
if (c /= 33) print *,9
print *,'pass'
end

