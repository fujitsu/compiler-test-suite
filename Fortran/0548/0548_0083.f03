  type x
     character::x1=""
  end type x
  class(x),allocatable::v
  allocate(v)
!$omp parallel private(v)
  if (v%x1/="") print *,v%x1
!$omp end parallel
print *,'pass'
end
