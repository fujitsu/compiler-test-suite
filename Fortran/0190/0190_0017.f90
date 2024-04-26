module m1
contains
 subroutine s(k)
  integer,value::k
  if (k/=1) print *,101
k=2
end subroutine
end
use m1
integer::n
n=1
call s(n)
  if (n/=1) print *,102
print *,'pass'
end
