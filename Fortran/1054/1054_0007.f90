module m1
  type x
     integer::x1
     contains
       final:: xp
  end type
  type y
    integer::y1
    type(x),allocatable::y2
  end type
  integer::xpno
contains
  subroutine xp(d)
    type(x):: d
    print *,100
!$omp atomic
    xpno=xpno+1
  end subroutine
 end
subroutine s1
use omp_lib
use m1
  type(y),pointer,save:: v(:)
  integer:: no
  integer(8)::loc0(2),loc1(2)
 !$omp threadprivate(v)
  allocate(v(10))
  allocate(v(1)%y2)
  v(1)%y1=1
  v(1)%y2%x1=2
  loc0(1)=loc(v(1))
  loc0(2)=loc(v(1)%y2)
 !$omp parallel copyin(v) private(no,loc1)
  no = omp_get_thread_num()

  if (v(1)%y1   /=1) print *,1201
  if (v(1)%y2%x1/=2) print *,1301

 !$omp barrier
  
  v(1)%y1=v(1)%y1+no
  v(1)%y2%x1=v(1)%y2%x1+no
  loc1(1)=loc(v(1))
  loc1(2)=loc(v(1)%y2)
  if( loc0(1) /= loc1(1) ) print *,1401,loc0(1),loc1(1)
  if( loc0(2) /= loc1(2) ) print *,1402,loc0(2),loc1(2)

!$omp end parallel
end

use m1
xpno=0
call omp_set_num_threads(4)
call s1
call s1
if( xpno /=0 ) print *,'NG : xpno=',xpno
print *,'pass'
end
