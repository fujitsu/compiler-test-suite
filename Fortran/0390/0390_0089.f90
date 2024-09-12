module m1
  contains
    subroutine s1(p1)
      integer,allocatable::p1(:),p2(:)
      call ss1(p1)
      call ss2(p1)
      call ss3(p1)
      call ss4(p1,2)
      call ss1(p2)
      call ss2(p2)
      call ss3(p2)
      call ss4(p2,2)
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
end
subroutine s
use m1
integer,allocatable::p1(:)
call s1(p1)
end
call s
print *,'pass'
end

