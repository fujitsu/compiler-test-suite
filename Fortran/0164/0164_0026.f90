module m1
  integer:: a=1,b=2
end
module m2
use m1
private a
contains
subroutine s1
  if (a/=1) print *,101
  if (b/=2) print *,102
end subroutine
end
use m2
call s1
print *,'pass'
end
