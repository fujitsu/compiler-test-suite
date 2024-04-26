subroutine s1
integer omp_get_thread_num
type x
  sequence
  integer:: x1
  integer::x2
end type
type (x):: n1(2),n2(2)
common /cmn/ n1,n2
!$omp threadprivate(/cmn/)
n1(2)%x1=omp_get_thread_num()+1
n1(2)%x2=omp_get_thread_num()+11
n2(2)%x1=omp_get_thread_num()+2
n2(2)%x2=omp_get_thread_num()+12
end
subroutine s2
integer omp_get_thread_num
type x
  sequence
  integer:: x1
  integer::x2
end type
type (x):: n1(2),n2(2)
common /cmn/ n1,n2
!$omp threadprivate(/cmn/)
if (n1(2)%x1/=omp_get_thread_num()+1) print *,101
if (n1(2)%x2/=omp_get_thread_num()+11) print *,111
if (n2(2)%x1/=omp_get_thread_num()+2) print *,102
if (n2(2)%x2/=omp_get_thread_num()+12) print *,112
end
!$omp parallel
call s1
call s2
!$omp end parallel
print *,'pass'
end
