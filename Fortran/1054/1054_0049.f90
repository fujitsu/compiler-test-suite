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

  subroutine sub(v,no,one,loc0)
    type(y),pointer:: v(:)
    integer:: no,one
    integer(8)::loc0(2)
 !$omp single 
    allocate(v(10))
    allocate(v(1)%y2)
    v(1)%y1=800
    v(1)%y2%x1=900
    loc0(1)=loc(v(1))
    loc0(2)=loc(v(1)%y2)
    one=no
 !$omp end single copyprivate(v)
  end subroutine sub
 end

subroutine s1(k)
use omp_lib
use m1
  type(y),pointer:: v(:)
  integer:: no,k,one
  integer(8)::loc0(2),loc1(2)

 !$omp parallel  private(v,no,loc1)
  no = omp_get_thread_num()

  call sub(v,no,one,loc0)

  if( v(1)%y1    /= 800 ) print *,'NG : 1501 no=',no,k,v(1)%y1
  if( v(1)%y2%x1 /= 900 ) print *,'NG : 1502 no=',no,k,v(1)%y2%x1
  if( no /= one ) then
    loc1(1)=loc(v(1))
    loc1(2)=loc(v(1)%y2)
    if( loc0(1) /= loc1(1) ) print *,1401,no,k,loc0(1),loc1(1)
    if( loc0(2) /= loc1(2) ) print *,1402,no,k,loc0(2),loc1(2)
  endif 
  
 !$omp barrier
  if( no == one ) then
    deallocate(v(1)%y2)
    deallocate(v)
  endif

!$omp end parallel
end

use m1
xpno=0
call omp_set_num_threads(4)
call s1(1)
if( xpno /= 1 ) print *,'NG : xpno(1)=',xpno
call s1(1)
if( xpno /= 2 ) print *,'NG : xpno(2)=',xpno
print *,'pass'
end
