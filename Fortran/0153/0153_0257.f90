module m1
  type x(k1)
    integer,kind::k1
    integer::a(k1)
  end type
contains
  subroutine s1
    type(x(2)):: v
    v%a=[11,12]
    call s2(v)
    if (any(v%a/=[1,2])) print *,101
  end subroutine
  subroutine s2(b)
    type(x(2)),intent(out):: b
    b%a=[1,2]
  end subroutine
end
use m1
call s1
print *,'pass'
end
