  type x
     integer::x1=1
  end type x
  class(x),allocatable::v
  allocate(v)
!$omp parallel private(v)
  if (v%x1/=1) print *,'err'
!$omp end parallel
print *,'pass'
end
