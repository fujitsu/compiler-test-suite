subroutine s1
integer omp_get_thread_num
common /cmn/ n1,n2
!$omp threadprivate(/cmn/)
!$omp parallel
block
integer:: y1
n1=omp_get_thread_num()+1
n2=omp_get_thread_num()+2
y1=1
end block
!$omp end parallel
end
subroutine s2
integer omp_get_thread_num
common /cmn/ n1,n2
!$omp threadprivate(/cmn/)
!$omp parallel
block
integer,save:: y1
if (n1/=omp_get_thread_num()+1) print *,101
if (n2/=omp_get_thread_num()+2) print *,102
y1=1
end block
!$omp end parallel
end
call s1
call s2
print *,'pass'
end
