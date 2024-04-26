subroutine s1
integer omp_get_thread_num
!$omp threadprivate(n1,n2)
save
!$omp parallel
n1=omp_get_thread_num()+1
n2=omp_get_thread_num()+2
!$omp end parallel
!$omp parallel
if (n1/=omp_get_thread_num()+1) print *,101
if (n2/=omp_get_thread_num()+2) print *,102
!$omp end parallel
end
call s1
print *,'pass'
end
