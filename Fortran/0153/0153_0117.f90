module m1
type x
  sequence
  integer:: x1
  integer::x2
end type
type (x),pointer:: n1,n2
common /cmn/ n1,n2
!$omp threadprivate(/cmn/)
end
subroutine s1(n)
use m1
integer omp_get_thread_num
allocate(n1,n2)
do k=1,n
n1%x1=omp_get_thread_num()+1
n1%x2=omp_get_thread_num()+11
n2%x1=omp_get_thread_num()+2
n2%x2=omp_get_thread_num()+12
end do
end
subroutine s2(n)
use m1
integer omp_get_thread_num
do k=1,n
if (n1%x1/=omp_get_thread_num()+1) print *,101
if (n1%x2/=omp_get_thread_num()+11) print *,111
if (n2%x1/=omp_get_thread_num()+2) print *,102
if (n2%x2/=omp_get_thread_num()+12) print *,112
end do
end
!$omp parallel
call s1(1)
call s2(1)
!$omp end parallel
print *,'pass'
end
