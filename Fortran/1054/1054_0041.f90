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
  type(y),pointer,save:: v
  integer:: no,k,one
  integer(8)::loc0(2),loc1(2)
 !$omp threadprivate(v)

 !$omp parallel
  allocate(v)
  allocate(v%y2)
  v%y1=1
  v%y2%x1=2
 !$omp end parallel

 !$omp parallel  private(no,loc1)
  no = omp_get_thread_num()
  if( v%y1    /= 1 ) print *,'NG : 1301 no=',no,k,v%y1
  if( v%y2%x1 /= 2 ) print *,'NG : 1302 no=',no,k,v%y2%x1

 !$omp single 
  v%y1=800
  v%y2%x1=900
  loc0(1)=loc(v)
  loc0(2)=loc(v%y2)
  one=no
 !$omp end single copyprivate(v)

  if( no /= one ) then
    loc1(1)=loc(v)
    loc1(2)=loc(v%y2)
    if( loc0(1) /= loc1(1) ) print *,1401,no,k,loc0(1),loc1(1)
    if( loc0(2) /= loc1(2) ) print *,1402,no,k,loc0(2),loc1(2)
  endif 
  if( v%y1    /= 800 ) print *,'NG : 1501 no=',no,k,v%y1
  if( v%y2%x1 /= 900 ) print *,'NG : 1502 no=',no,k,v%y2%x1
  
!$omp end parallel
  deallocate(v%y2)
  deallocate(v)
end

use m1
xpno=0
call omp_set_num_threads(4)
call s1(1)
if( xpno /= 1 ) print *,'NG : xpno(1)=',xpno
call s1(2)
if( xpno /= 2 ) print *,'NG : xpno(2)=',xpno
print *,'pass'
end
