subroutine s1(kk)
integer omp_get_thread_num
integer,pointer::n2(:)
common /cmn/ n1(2),n2
!$omp threadprivate(/cmn/)
do k=1,kk
allocate(n2(2))
n1=omp_get_thread_num()+1
n2=omp_get_thread_num()+2
end do
end
subroutine s2(kk)
integer omp_get_thread_num
integer,pointer::n2(:)
common /cmn/ n1(2),n2
!$omp threadprivate(/cmn/)
do k=1,kk
if (n1(1)/=omp_get_thread_num()+1) print *,101
if (n2(1)/=omp_get_thread_num()+2) print *,102
if (n1(2)/=omp_get_thread_num()+1) print *,111
if (n2(2)/=omp_get_thread_num()+2) print *,112
end do
end
!$omp parallel
call s1(1)
call s2(1)
!$omp end parallel
print *,'pass'
end
