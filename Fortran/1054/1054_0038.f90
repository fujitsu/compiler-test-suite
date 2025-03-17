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
  type(y):: v(10)
  integer:: no,k,one
  integer(8)::loc0(3),loc1(3)
  if( .not. allocated(v(1)%y2) ) then
    allocate(v(1)%y2)
    allocate(v(1)%y2%x2)
  endif
  v(1)%y1=1
  v(1)%y2%x1=2
  v(1)%y2%x2=3
  loc0(1)=loc(v(1))
  loc0(2)=loc(v(1)%y2)
  loc0(3)=loc(v(1)%y2%x2)
 !$omp parallel  private(v,no,loc1)
  no = omp_get_thread_num()

 !$omp single 
  v(1)%y1=800
  v(1)%y2%x1=900
  v(1)%y2%x2=555
  one=no
  loc0(1)=loc(v(1))
  loc0(2)=loc(v(1)%y2)
  loc0(3)=loc(v(1)%y2%x2)
 !$omp end single copyprivate(v)

  if( no /= one ) then
    loc1(1)=loc(v(1))
    loc1(2)=loc(v(1)%y2)
    loc1(3)=loc(v(1)%y2%x2)
    if( loc0(1) == loc1(1) ) print *,1401,no,k,loc0(1),loc1(1)
    if( loc0(2) == loc1(2) ) print *,1402,no,k,loc0(2),loc1(2)
    if( loc0(3) == loc1(3) ) print *,1403,no,k,loc0(3),loc1(3)
  endif 
  if( v(1)%y1    /= 800 ) print *,'NG : 1501 no=',no,k,v(1)%y1
  if( v(1)%y2%x1 /= 900 ) print *,'NG : 1502 no=',no,k,v(1)%y2%x1
  if( v(1)%y2%x2 /= 555 ) print *,'NG : 1503 no=',no,k,v(1)%y2%x2
  
!$omp end parallel
end

use m1
xpno=0
call omp_set_num_threads(4)
call s1(1)
if( xpno /= 8 ) print *,'NG : xpno(1)=',xpno
call s1(2)
if( xpno /= 16) print *,'NG : xpno(2)=',xpno
print *,'pass'
end
