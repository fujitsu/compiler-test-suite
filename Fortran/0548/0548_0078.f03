call sss
print *,'pass'
contains
subroutine sss
type x
integer::x1=1
end type x
class(x),allocatable::v(:)
allocate(v(2))
  if (v(1)%x1/=1) print *,'err'
  if (v(2)%x1/=1) print *,'err'
!$omp parallel private(v)
  if (v(1)%x1/=1) print *,'err'
  if (v(2)%x1/=1) print *,'err'
!$omp end parallel
end subroutine
end
