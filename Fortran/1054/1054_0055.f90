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
!$omp atomic
    xpno=xpno+1
  end subroutine
 end
subroutine s1(k)
use omp_lib
use m1
  type(y),save:: v(10)
  integer:: no,k,one
  integer(8)::loc0(2),loc1(2)
 !$omp threadprivate(v)
  v(1)%y1=1
  loc0(1)=loc(v(1))
 !$omp parallel  copyin(v) private(no,loc1)
  no = omp_get_thread_num()

  if( v(1)%y1    /= 1 )    print *,'NG : 1201 no=',no,k,v(1)%y1
  if( allocated(v(1)%y2) ) print *,'NG : 2201 no=',no,k,'copyin-y(1)%y2'
  if( no /= 0 ) then
    loc1(1)=loc(v(1))
    if( loc0(1) == loc1(1) ) print *,1301,no,k,loc0(1),loc1(1)
  endif 


 !$omp single 
  v(1)%y1=800
  if( allocated(v(1)%y2) ) print *,'NG : 2301 no=',no,k,'single-y(1)%y2'
  one=no
  loc0(1)=loc(v(1))
 !$omp end single copyprivate(v)

  if( no /= one ) then
    loc1(1)=loc(v(1))
    if( loc0(1) == loc1(1) ) print *,1401,no,k,loc0(1),loc1(1)
  endif 
  if( v(1)%y1    /= 800  ) print *,'NG : 1501 no=',no,k,v(1)%y1
  if( allocated(v(1)%y2) ) print *,'NG : 2501 no=',no,k,'after-y(1)%y2'
  
!$omp end parallel
end

use m1
xpno=0
call omp_set_num_threads(4)
call s1(1)
if( xpno /= 0 ) print *,'NG : xpno(1)=',xpno
call s1(2)
if( xpno /= 0 ) print *,'NG : xpno(2)=',xpno
print *,'pass'
end
