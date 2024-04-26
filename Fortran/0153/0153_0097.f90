subroutine s1
integer omp_get_thread_num
common /cmn/ n1(2),n2(2)
!$omp threadprivate(/cmn/)
n1=omp_get_thread_num()+1
n2=omp_get_thread_num()+2
end
subroutine s2
integer omp_get_thread_num
common /cmn/ n1(2),n2(2)
!$omp threadprivate(/cmn/)
if (n1(1)/=omp_get_thread_num()+1) print *,101
if (n2(1)/=omp_get_thread_num()+2) print *,102
if (n1(2)/=omp_get_thread_num()+1) print *,111
if (n2(2)/=omp_get_thread_num()+2) print *,112
end
!$omp parallel
call s1
call s2
!$omp end parallel
print *,'pass'
end
