module m
  integer(4) :: a,b,c
  equivalence(a,b,c)
  private c
contains
  subroutine sub
    c=33
  end subroutine
end

use m
a=11
if (b /= 11) print *,2
if (a /= 11) print *,3
b=22
if (b /= 22) print *,5
if (a /= 22) print *,6
call sub
if (b /= 33) print *,8
if (a /= 33) print *,9
print *,'pass'
end

