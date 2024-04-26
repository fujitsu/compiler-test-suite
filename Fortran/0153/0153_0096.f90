subroutine s1
integer omp_get_thread_num
common /cmn/ n1,n2
!$omp threadprivate(/cmn/)
n1=omp_get_thread_num()+1
n2=omp_get_thread_num()+2
end
subroutine s2
integer omp_get_thread_num
common /cmn/ n1,n2
!$omp threadprivate(/cmn/)
if (n1/=omp_get_thread_num()+1) print *,101
if (n2/=omp_get_thread_num()+2) print *,102
end
!$omp parallel
call s1
call s2
!$omp end parallel
print *,'pass'
end
