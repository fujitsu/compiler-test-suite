subroutine s1(k)
integer omp_get_thread_num
integer,pointer::n2
common /cmn/ n1,n2
!$omp threadprivate(/cmn/)
do kk=1,k
allocate(n2)
n1=omp_get_thread_num()+1
n2=omp_get_thread_num()+2
end do
end
subroutine s2(k)
integer omp_get_thread_num
integer,pointer::n2
common /cmn/ n1,n2
!$omp threadprivate(/cmn/)
do kk=1,k
if (n1/=omp_get_thread_num()+1) print *,101
if (n2/=omp_get_thread_num()+2) print *,102
deallocate(n2)
end do
end
!$omp parallel
call s1(1)
call s2(1)
!$omp end parallel
print *,'pass'
end
