subroutine s1(n)
integer omp_get_thread_num
type x
  sequence
  integer:: x1(2)
  integer::x2(2)
end type
type (x),pointer:: n1(:),n2(:)
common /cmn/ n1,n2
!$omp threadprivate(/cmn/)
allocate(n1(n+1:2),n2(2:n+1))
do k=1,n
n1(2)%x1=omp_get_thread_num()+1
n1(2)%x2=omp_get_thread_num()+11
n2(2)%x1=omp_get_thread_num()+2
n2(2)%x2=omp_get_thread_num()+12
end do
end
subroutine s2(n)
integer omp_get_thread_num
type x
  sequence
  integer:: x1(2)
  integer::x2(2)
end type
type (x),pointer:: n1(:),n2(:)
common /cmn/ n1,n2
!$omp threadprivate(/cmn/)
do k=1,n
if (any(n1(2)%x1/=omp_get_thread_num()+1)) print *,101
if (any(n1(2)%x2/=omp_get_thread_num()+11)) print *,111
if (any(n2(2)%x1/=omp_get_thread_num()+2)) print *,102
if (any(n2(2)%x2/=omp_get_thread_num()+12)) print *,112
end do
end
!$omp parallel
call s1(1)
call s2(1)
!$omp end parallel
print *,'pass'
end
