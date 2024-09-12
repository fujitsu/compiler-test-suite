module m1
  contains
    subroutine s1
      integer,pointer::p1(:)
      p1=>null()
      call ss2(p1)
      if (fs2(p1)/=0) print *,104
    end subroutine
    subroutine ss2(x)
      integer,optional:: x(2)
      if (present(x)) print *,102
    end subroutine
    function   fs2(x) result(k)
      integer,optional:: x(2)
      if (present(x)) print *,103
      k=0
    end function
end
use m1
call s1
print *,'pass'
end

