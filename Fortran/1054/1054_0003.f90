subroutine s1
use omp_lib
  integer,allocatable,save:: v
  integer:: no
  integer(8)::loc0(2),loc1(2)
 !$omp threadprivate(v)
 !$omp parallel
  allocate(v)
 !$omp end parallel
  v=1
  loc0(1)=loc(v)
 !$omp parallel copyin(v) private(no,loc1)
  no = omp_get_thread_num()

  if (v   /=1) print *,1201
  
  v=v+no
  if( no /= 0 ) then
    loc1(1)=loc(v)
    if( loc0(1) == loc1(1) ) print *,1401,loc0(1),loc1(1)
  endif
  
 !$omp master
  if (v   /=1) print *,1501
 !$omp end master

!$omp end parallel
  if (v   /=1) print *,201
end
call omp_set_num_threads(2)
call s1
print *,'pass'
end
