module m1
    integer,pointer::p
  contains
    subroutine s1()
      call ss1(f())
      if ((p/=3)) print *,301,p
    end subroutine
    subroutine ss1(x)
      integer,optional:: x
      if (.not.present(x)) print *,101
      if ((x/=1)) print *,201
      x=3
    end subroutine
    function f() result(r)
      integer,pointer::r
      allocate(p)
      p=1
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

