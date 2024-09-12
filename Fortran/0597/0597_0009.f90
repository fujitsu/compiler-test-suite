module m1
  type y
     integer,allocatable::y1
     contains
       final:: yp
  end type
  type x
     type(y)::x1(2)
     contains
       final:: xp1
       final:: xp2
  end type
  integer::xpno
contains
  subroutine xp1(d)
    type(x):: d(:)
!$omp atomic
    xpno=xpno+1
  end subroutine
  subroutine xp2(d)
    type(x):: d
!$omp atomic
    xpno=xpno+1
    print*,"XP2"
  end subroutine
  subroutine yp(d)
    type(y):: d(:)
!$omp atomic
    xpno=xpno+1
  end subroutine
end module m1

subroutine s1()
use m1
  type(x),allocatable :: v(:)
  allocate(v(2))
  allocate(v(1)%x1(1)%y1)
  v(1)%x1(1)%y1=1
!$omp parallel firstprivate(v)
  v(1)%x1(1)%y1=2
!$omp end parallel
end

use m1
xpno=0
call omp_set_num_threads(4)
call s1()
if( xpno /= 3+4+4+4 ) print *,'NG : xpno=',xpno
print *,'PASS'
end
