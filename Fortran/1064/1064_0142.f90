subroutine s1
 type x
  integer:: x1
  integer:: x2
 end type
type(x),allocatable:: a
allocate(a)
a%x1=1
a%x2=2
!$omp parallel firstprivate(a)
if (a%x1/=1 ) print *,101
if (a%x2/=2 ) print *,102
deallocate(a)
!$omp end parallel
if (a%x1/=1 ) print *,201
if (a%x2/=2 ) print *,202
end
call s1
print *,'pass'
end
