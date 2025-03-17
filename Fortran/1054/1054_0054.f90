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
  type(y),allocatable:: v
  integer:: no,k,one
  integer(8)::loc0(2),loc1(2)
  if( .not. allocated(v) ) then
    allocate(v)
  endif
  v%y1=1
  loc0(1)=loc(v)
 !$omp parallel  private(v,no,loc1)
  no = omp_get_thread_num()

 !$omp single 
  v%y1=800
  if( allocated(v%y2) ) print *,'NG : 2301 no=',no,k,'single:y2 alloced'
  one=no
  loc0(1)=loc(v)
 !$omp end single copyprivate(v)

  if( no /= one ) then
    loc1(1)=loc(v)
    if( loc0(1) == loc1(1) ) print *,1401,no,k,loc0(1),loc1(1)
  endif 
  if( v%y1    /= 800  ) print *,'NG : 1501 no=',no,k,v%y1
  if( allocated(v%y2) ) print *,'NG : 2501 no=',no,k,'after:y2 alloced'
  
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
