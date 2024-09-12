module m1
    integer,pointer    ::p(:)
  contains
    subroutine s1()
      call ss1(f())
      if (associated(p)) print *,301
    end subroutine
    subroutine ss1(x)
      integer,optional:: x(:)
      if (present(x)) print *,101
    end subroutine
    function f() result(r)
      integer,target,allocatable::r(:)
      p=>r
    end function
end
subroutine s
use m1
call s1()
end
call s
print *,'pass'
end

