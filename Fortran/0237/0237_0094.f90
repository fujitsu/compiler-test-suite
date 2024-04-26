module m1
  integer,bind(c),private::x
  contains
    subroutine s1() bind(c)
    x=1
    end subroutine
end
use m1
call s1
print *,'pass'
end
