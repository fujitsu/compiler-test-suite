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
  type(y),allocatable,save:: v(:)
  integer:: no,k,one
  integer(8)::loc0(2),loc1(2)
 !$omp threadprivate(v)
  if( .not. allocated(v) ) then
    allocate(v(10))
  endif
  v(1)%y1=1
  loc0(1)=loc(v(1))
 !$omp parallel  copyin(v) private(no,loc1)
  no = omp_get_thread_num()

  if( v(1)%y1    /= 1    ) print *,'NG : 1201 no=',no,k,v(1)%y1
  if( allocated(v(1)%y2) ) print *,'NG : 2202 no=',no,k,'copyin-v(1)%y2 alloced'
  if( no /= 0 ) then
    loc1(1)=loc(v(1))
    if( loc0(1) == loc1(1) ) print *,1301,no,k,loc0(1),loc1(1)
  endif 
 !$omp single 
  v(1)%y1=800
  if( allocated(v(1)%y2) ) print *,'NG : 2301 no=',no,k,'single-v(1)%y2 alloced'
  one=no
  loc0(1)=loc(v(1))
 !$omp end single copyprivate(v)

  if( no /= one ) then
    loc1(1)=loc(v(1))
    if( loc0(1) == loc1(1) ) print *,1401,no,k,loc0(1),loc1(1)
  endif 
  if( v(1)%y1    /= 800  ) print *,'NG : 1501 no=',no,k,v(1)%y1
  if( allocated(v(1)%y2) ) print *,'NG : 2501 no=',no,k,'after-v(1)%y2 alloced'
  
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
