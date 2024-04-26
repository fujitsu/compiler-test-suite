subroutine s1
integer omp_get_thread_num
common /cmn/ n1,n2
!$omp threadprivate(/cmn/)
!$omp parallel
block
n1=omp_get_thread_num()+1
n2=omp_get_thread_num()+2
end block
!$omp end parallel
end
subroutine s2
integer omp_get_thread_num
common /cmn/ n1,n2
!$omp threadprivate(/cmn/)
!$omp parallel
block
if (n1/=omp_get_thread_num()+1) print *,101
if (n2/=omp_get_thread_num()+2) print *,102
end block
!$omp end parallel
end
call s1
call s2
print *,'pass'
end
