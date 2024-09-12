module m1
  type x
     integer::x1
     contains
       final:: xp
  end type

  integer::xpno

contains
  subroutine xp(d)
    type(x):: d
    d%x1=0
!$omp atomic
    xpno=xpno+1
  end subroutine
end module m1

subroutine s1()
use m1
  type(x):: v
  v%x1=1
!$omp parallel private(v)
  v%x1=2
!$omp end parallel
end

use m1
xpno=0
call s1()
if( xpno /= 1 ) print *,'NG : xpno=',xpno
print *,'PASS'
end
