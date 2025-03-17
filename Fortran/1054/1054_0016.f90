subroutine s1
use omp_lib
  integer,pointer:: v
  integer:: no, one
  integer(8)::loc0(2),loc1(2)

 !$omp parallel  private(v,no,loc1)
  no = omp_get_thread_num()

 !$omp single
   allocate(v)
   v=900
   loc0(1)=loc(v)
   one=no
 !$omp end single copyprivate(v)
  
  if( v /= 900 ) print *,'NG : no=',no,v
  if( no /= one ) then
    loc1(1)=loc(v)
    if( loc0(1) /= loc1(1) ) print *,1401,no,loc0(1),loc1(1)
  endif

!$omp end parallel
end

call omp_set_num_threads(4)
call s1
print *,'pass'
end
