module m1
  contains
    subroutine s1()
      call ss1(f())
    end subroutine
    subroutine ss1(x)
      integer,optional:: x
      if (present(x)) print *,101
    end subroutine
    function f() result(r)
      integer,allocatable::r
    end function
end
subroutine s
use m1
call s1()
end
call s
print *,'pass'
end

