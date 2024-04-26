module m1
integer:: x1234=1
contains
 subroutine s() bind(c,name='x1234')
  if (x1234/=1) print *,101
 end subroutine
end
use m1
  if (x1234/=1) print *,101
call s
print *,'pass'
end
