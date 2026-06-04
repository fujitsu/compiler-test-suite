module m1
  type x
    integer:: a(10000)
    integer:: b(10000)
  end type
  type(x):: v
contains
subroutine s1
v=x(0,0)
call sub(v%b(1))
end subroutine
end
subroutine sub(n)
if (n/=0) print *,101
end
use m1
call s1
print *,'pass'
end
