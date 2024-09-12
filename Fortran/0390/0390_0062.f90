module m1
  contains
    subroutine s1
      integer,pointer::p1(:)
      p1=>null()
      call ss2(p1,p1,p1)
      if (fs2(p1,p1,p1)/=0) print *,104
    end subroutine
    subroutine ss2(x,y,z)
      integer,optional:: x(2),y(2),z(2)
      if (present(x)) print *,1021
      if (present(y)) print *,1022
      if (present(z)) print *,1023
    end subroutine
    function   fs2(x,y,z) result(k)
      integer,optional:: x(2),y(2),z(2)
      if (present(x)) print *,1031
      if (present(y)) print *,1032
      if (present(z)) print *,1033
      k=0
    end function
end
use m1
call s1
print *,'pass'
end

