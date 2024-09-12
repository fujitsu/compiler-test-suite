module m1
  type y
     integer,allocatable::y1
     contains
       final:: yp
  end type
  type x
     type(y)::x1
     contains
       final:: xp
  end type
  integer::xpno
contains
  subroutine xp(d)
    type(x):: d
!$omp atomic
    xpno=xpno+1
  end subroutine
  subroutine yp(d)
    type(y):: d
!$omp atomic
    xpno=xpno+1
  end subroutine
end module m1

subroutine s1()
use m1
  type(x) :: v
  allocate(v%x1%y1)
  v%x1%y1=1
!$omp parallel private(v)
  v%x1%y1=2
!$omp end parallel
end

use m1
xpno=0
call omp_set_num_threads(4)
call s1()
if( xpno /= 2+4+4 ) print *,'NG : xpno=',xpno
print *,'PASS'
end
