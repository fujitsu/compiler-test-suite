subroutine s1
use omp_lib
  integer,pointer,save:: v
  integer:: no,one
  integer(8)::loc0(2),loc1(2)
 !$omp threadprivate(v)

 !$omp parallel
  allocate(v)
  v=1
 !$omp end parallel

 !$omp parallel  private(no,loc1)
  no = omp_get_thread_num()

 !$omp single
   v=900
   loc0(1)=loc(v)
   one=no
 !$omp end single copyprivate(v)
  
  if( no /= one ) then
    loc1(1)=loc(v)
    if( loc0(1) /= loc1(1) ) print *,1401,loc0(1),loc1(1)
  endif
  if( v /= 900 ) print *,'NG : no=',no,v

!$omp end parallel
end

call omp_set_num_threads(4)
call s1
print *,'pass'
end
