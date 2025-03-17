module m1
  type x
     integer::x1
     contains
       final:: xp
  end type
  type y
    integer::y1
    type(x)::y2
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
  allocate(v)
  v%y1=1
  v%y2%x1=2
 !$omp parallel  private(v,no,loc1)
  no = omp_get_thread_num()

 !$omp single 
  v%y1=800
  v%y2%x1=900
  one=no
  loc0(1)=loc(v)
  loc0(2)=loc(v%y2)
 !$omp end single copyprivate(v)

  if( no /= one ) then
    loc1(1)=loc(v)
    loc1(2)=loc(v%y2)
    if( loc0(1) == loc1(1) ) print *,1401,no,k,loc0(1),loc1(1)
    if( loc0(2) == loc1(2) ) print *,1402,no,k,loc0(2),loc1(2)
  endif 
  if( v%y1    /= 800 ) print *,'NG : 1501 no=',no,k,v%y1
  if( v%y2%x1 /= 900 ) print *,'NG : 1502 no=',no,k,v%y2%x1
  
!$omp end parallel
end

use m1
xpno=0
call omp_set_num_threads(4)
call s1(1)
if( xpno /= 3+4+1 ) print *,'NG : xpno(1)=',xpno
call s1(2)
if( xpno /= 3+4+1+8 ) print *,'NG : xpno(2)=',xpno
print *,'pass'
end
