module m1
  contains
    subroutine s1(p1)
      integer,pointer::p1(:),p2(:)
      p2=>null()
      call ss1(f(p1))
      call ss2(f(p1))
      call ss3(f(p1))
      call ss4(f(p1),2)
      call ss1(f(p2))
      call ss2(f(p2))
      call ss3(f(p2))
      call ss4(f(p2),2)
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
    function f(p) result(r)
      integer,pointer::p(:),r(:)
      r=>p
    end function
end
subroutine s
use m1
integer,pointer::p1(:)=>null()
call s1(f(p1))
end
call s
print *,'pass'
end

