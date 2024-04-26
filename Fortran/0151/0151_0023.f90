subroutine s1
integer omp_get_thread_num
integer,save::  n1,n2
!$omp threadprivate(n1,n2)
block
n1=omp_get_thread_num()+1
n2=omp_get_thread_num()+2
if (n1/=omp_get_thread_num()+1) print *,101
if (n2/=omp_get_thread_num()+2) print *,102
end block
end
!$omp parallel
call s1
!$omp end parallel
print *,'pass'
end
