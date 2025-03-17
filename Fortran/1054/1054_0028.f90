module m1
  type x
     integer::x1
     integer,allocatable::x2
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
  type(y),allocatable,save:: v
  integer:: no,k, one
  integer(8)::loc0(3),loc1(3)
 !$omp threadprivate(v)
  if( .not. allocated(v) ) then
    allocate(v)
  endif
  if( .not. allocated(v%y2) ) then
    allocate(v%y2)
    allocate(v%y2%x2)
  endif
  v%y1=1
  v%y2%x1=2
  v%y2%x2=3
  loc0(1)=loc(v)
  loc0(2)=loc(v%y2)
  loc0(3)=loc(v%y2%x2)
 !$omp parallel  copyin(v) private(no,loc1)
  no = omp_get_thread_num()

  if( v%y1    /= 1 ) print *,'NG : 1201 no=',no,k,v%y1
  if( v%y2%x1 /= 2 ) print *,'NG : 1202 no=',no,k,v%y2%x1
  if( v%y2%x2 /= 3 ) print *,'NG : 1203 no=',no,k,v%y2%x2
  if( no /= 0 ) then
    loc1(1)=loc(v)
    loc1(2)=loc(v%y2)
    loc1(3)=loc(v%y2%x2)
    if( loc0(1) == loc1(1) ) print *,1301,no,k,loc0(1),loc1(1)
    if( loc0(2) == loc1(2) ) print *,1302,no,k,loc0(2),loc1(2)
    if( loc0(3) == loc1(3) ) print *,1303,no,k,loc0(3),loc1(3)
  endif 

 !$omp single 
  v%y1=800
  v%y2%x1=900
  v%y2%x2=555
  one=no
  loc0(1)=loc(v)
  loc0(2)=loc(v%y2)
  loc0(3)=loc(v%y2%x2)
 !$omp end single copyprivate(v)

  if( no /= one ) then
    loc1(1)=loc(v)
    loc1(2)=loc(v%y2)
    loc1(3)=loc(v%y2%x2)
    if( loc0(1) == loc1(1) ) print *,1401,no,k,loc0(1),loc1(1)
    if( loc0(2) == loc1(2) ) print *,1402,no,k,loc0(2),loc1(2)
    if( loc0(3) == loc1(3) ) print *,1403,no,k,loc0(3),loc1(3)
  endif 
  if( v%y1    /= 800 ) print *,'NG : 1501 no=',no,k,v%y1
  if( v%y2%x1 /= 900 ) print *,'NG : 1502 no=',no,k,v%y2%x1
  if( v%y2%x2 /= 555 ) print *,'NG : 1503 no=',no,k,v%y2%x2
  
!$omp end parallel
end

use m1
xpno=0
call omp_set_num_threads(4)
call s1(1)
if( xpno /= 3     ) print *,'NG : xpno(1)=',xpno
call s1(2)
if( xpno /= 3+3+3 ) print *,'NG : xpno(2)=',xpno
print *,'pass'
end
