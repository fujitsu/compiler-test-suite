module m1
  contains
    subroutine s1(p1)
      integer,pointer::p1(:),p2(:)
      p2=>null()
      k= ss1(p1)
      if (k/=0) print *,201
      k= ss2(p1)
      if (k/=0) print *,201
      k= ss3(p1)
      if (k/=0) print *,201
      k= ss4(p1,2)
      if (k/=0) print *,201
      k= ss1(p2)
      if (k/=0) print *,201
      k= ss2(p2)
      if (k/=0) print *,201
      k= ss3(p2)
      if (k/=0) print *,201
      k= ss4(p2,2)
      if (k/=0) print *,201
    end subroutine
    function ss1(x) result(kk)
      integer,optional:: x(:)
      if (present(x)) print *,101
      kk=0
    end function
    function ss2(x) result(kk)
      integer,optional:: x(2)
      if (present(x)) print *,102
      kk=0
    end function
    function ss3(x) result(kk)
      integer,optional:: x(*)
      if (present(x)) print *,103
      kk=0
    end function
    function ss4(x,n) result(kk)
      integer,optional:: x(n)
      if (present(x)) print *,104
      kk=0
    end function
end
subroutine s
use m1
integer,pointer::p1(:)=>null()
call s1(p1)
end
call s
print *,'pass'
end

