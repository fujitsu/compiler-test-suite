subroutine s1
use omp_lib
  integer,pointer:: v
  integer:: no

  nullify(v)

 !$omp parallel  private(v,no,loc1)
  no = omp_get_thread_num()

 !$omp single
  if( associated(v) ) print *,1201,no
 !$omp end single copyprivate(v)

  if( associated(v) ) print *,1301,no
  
!$omp end parallel
end

call omp_set_num_threads(4)
call s1
print *,'pass'
end
