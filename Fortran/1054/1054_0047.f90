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
 !$omp threadprivate(v)

 !$omp parallel  private(no,loc1)
  no = omp_get_thread_num()

 !$omp single 
  if( associated(v) ) then
    print *,1201
    if( allocated(v(1)%y2) ) print *,1301
  endif
 !$omp end single copyprivate(v)

  if( associated(v) ) then
    print *,1401
    if( allocated(v(1)%y2) ) print *,1501
  endif
  
!$omp end parallel
end

use m1
xpno=0
call omp_set_num_threads(4)
call s1
if( xpno /= 0 ) print *,'NG : xpno(1)=',xpno
call s1
if( xpno /= 0 ) print *,'NG : xpno(2)=',xpno
print *,'pass'
end
