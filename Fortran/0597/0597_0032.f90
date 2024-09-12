module m1
  type y
   integer::y1
   contains
    final:: yp
  end type

  type x
     integer,allocatable::x1
     type(y),allocatable::obj
   contains
    final:: xp
  end type

  integer::xpno
contains
  subroutine xp(d)
    type(x):: d
    print*,"XP",d%x1
!$omp atomic
    xpno=xpno+1
  end subroutine
  subroutine yp(d)
    type(y):: d
    print*,"YP",d%y1
!$omp atomic
    xpno=xpno+1
  end subroutine
end module m1

subroutine s1()
use m1
  type(x),allocatable:: v
  allocate(v)
  allocate(v%x1)
  allocate(v%obj)
  v%x1=1
  v%obj%y1=2
!$omp sections lastprivate(v)
  v%x1=3
  v%obj%y1=4
!$omp end sections
 if(v%x1 /= 3) print*,"101"
 if(v%obj%y1 /= 4) print*,"102"
end

use m1
xpno=0
call omp_set_num_threads(4)
call s1()
if( xpno /= 6 ) print *,'NG : xpno=',xpno
print *,'PASS'
end
