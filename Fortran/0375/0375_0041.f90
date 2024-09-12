module m1
type a
  integer(1) ::e(17)
end type
contains
subroutine s(j)
type(a),value::j
if (any(j%e/=2))print *,'error-1'
j%e=3
end subroutine
end
use m1
type(a)::j
j%e=2
call s(j)
if (any(j%e/=2))print *,'error-2'
print *,'pass'
end
