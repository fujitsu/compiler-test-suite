subroutine s1
use omp_lib
  integer,allocatable:: v(:)
  integer:: no, one
  integer(8)::loc0(2),loc1(2)
  allocate(v(10))
  v(1)=1
 !$omp parallel  private(v,no,loc1)
  no = omp_get_thread_num()

 !$omp single
  v(1)=900
  one=no
  loc0(1)=loc(v)
 !$omp end single copyprivate(v)

  if( no /= one ) then
    loc1(1)=loc(v)
    if( loc0(1) == loc1(1) ) print *,1401,loc0(1),loc1(1)
  endif
  if( v(1) /= 900 ) print *,'NG : no=',no,v(1)
  
!$omp end parallel
end

call omp_set_num_threads(2)
call s1
print *,'pass'
end
