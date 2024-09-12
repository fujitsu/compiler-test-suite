  type x
     character::x1="1"
     integer::x2=100
  end type x
  class(x),allocatable::v
  allocate(v)
!$omp parallel private(v)
  if (v%x1/="1") print *,v%x1
  if (v%x2/=100) print *,v%x1
!$omp end parallel
print *,'pass'
end
