module m1
    integer,pointer::p(:)
  contains
    subroutine s1()
      call ss1(f())
      if (any(p/=3)) print *,301,p
      call ss2(f())
      if (any(p/=3)) print *,302,p
      call ss3(f())
      if (any(p/=3)) print *,303,p
      call ss4(f(),2)
      if (any(p/=3)) print *,304,p
    end subroutine
    subroutine ss1(x)
      integer,optional:: x(:)
      if (.not.present(x)) print *,101
      if (any(x/=[1,2])) print *,201
      x=3
    end subroutine
    subroutine ss2(x)
      integer,optional:: x(2)
      if (.not.present(x)) print *,102
      if (any(x/=[1,2])) print *,202
      x=3
    end subroutine
    subroutine ss3(x)
      integer,optional:: x(*)
      if (.not.present(x)) print *,103
      if (any(x(:2)/=[1,2])) print *,203
      x(:2)=3
    end subroutine
    subroutine ss4(x,n)
      integer,optional:: x(n)
      if (.not.present(x)) print *,104
      if (any(x/=[1,2])) print *,204
      x=3
    end subroutine
    function f() result(r)
      integer,pointer::r(:)
      allocate(p(2))
      p=[1,2]
      r=>p
    end function
end
subroutine s
use m1
call s1()
end
call s
print *,'pass'
end

