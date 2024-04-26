module m1
  type x
    private 
      integer::a=3
      integer::b=4
  end type
  type,extends(x):: xx
      integer::c
  end type
type (xx):: v
contains
  subroutine s1
    if (v%a/=3) print *,101
    if (v%b/=4) print *,102
    if (v%c/=1) print *,103
  end subroutine
end
use m1
v=xx(c=1)
call s1
print *,'pass'
end
