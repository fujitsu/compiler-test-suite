module m1
  integer:: a=1
end
module m2
use m1
private a
contains
subroutine s1
  if (a/=1) print *,101
end subroutine
end
use m2
call s1
print *,'pass'
end
