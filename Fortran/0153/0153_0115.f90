module m1
integer,pointer::n1,n2
common /cmn/ n1,n2
!$omp threadprivate(/cmn/)
end
subroutine s1(n)
use m1
integer omp_get_thread_num
do k=1,n
allocate(n1,n2)
n1=omp_get_thread_num()+1
n2=omp_get_thread_num()+2
end do
end
subroutine s2(n)
use m1
integer omp_get_thread_num
do k=1,n
if (n1/=omp_get_thread_num()+1) print *,101
if (n2/=omp_get_thread_num()+2) print *,102
end do
end
!$omp parallel
call s1(1)
call s2(1)
!$omp end parallel
print *,'pass'
end
