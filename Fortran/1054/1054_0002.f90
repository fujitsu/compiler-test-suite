module m1
  type y
    integer::y1
    integer::y2
  end type
end
subroutine s1
use omp_lib
use m1
  type(y),save:: v
  integer:: no
  integer(8)::loc0(2),loc1(2)
 !$omp threadprivate(v)
  v%y1=1
  v%y2=2
  loc0(1)=loc(v)
 !$omp parallel copyin(v) private(no,loc1)
  no = omp_get_thread_num()

  if (v%y1   /=1) print *,1201
  if (v%y2   /=2) print *,1301
  
  v%y1=v%y1+no
  v%y2=v%y2+no
  if( no /= 0 ) then
    loc1(1)=loc(v)
    if( loc0(1) == loc1(1) ) print *,1401,loc0(1),loc1(1)
  endif
  
 !$omp master
  if (v%y1   /=1) print *,1501
  if (v%y2   /=2) print *,1501
 !$omp end master

!$omp end parallel
  if (v%y1   /=1) print *,201
  if (v%y2   /=2) print *,301
end
call omp_set_num_threads(4)
call s1
call s1
print *,'pass'
end
