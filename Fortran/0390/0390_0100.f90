module m1
    integer,pointer::p(:)
  contains
    subroutine s1()
      call ss1(f())
      if (associated(p))print *,301
      call ss2(f())
      if (associated(p))print *,302
      call ss3(f())
      if (associated(p))print *,303
      call ss4(f(),2)
      if (associated(p))print *,304
    end subroutine
    subroutine ss1(x)
      integer,optional:: x(:)
      if (present(x)) print *,101
    end subroutine
    subroutine ss2(x)
      integer,optional:: x(2)
      if (present(x)) print *,102
    end subroutine
    subroutine ss3(x)
      integer,optional:: x(*)
      if (present(x)) print *,103
    end subroutine
    subroutine ss4(x,n)
      integer,optional:: x(n)
      if (present(x)) print *,104
    end subroutine
    function f() result(r)
      integer,allocatable,target::r(:)
      p=> r
    end function
end
subroutine s
use m1
call s1()
end
call s
print *,'pass'
end

