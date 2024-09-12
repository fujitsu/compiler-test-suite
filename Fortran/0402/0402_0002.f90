subroutine s1
integer omp_get_thread_num
common /cmn/ n1,n2
!$omp threadprivate(/cmn/)
!$omp parallel
n1=1;n2=omp_get_thread_num()
call s2
!$omp end parallel
contains
subroutine s2
integer omp_get_thread_num
common /cmn/ n1,n2
!$omp threadprivate(/cmn/)
if (n1/=1) print *,101
if (n2/=omp_get_thread_num()) print *,102
end subroutine
end
call s1
print *,'pass'
end
