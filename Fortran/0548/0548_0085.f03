  type x
     character::x1(2)=["1","2"]
  end type x

  class(x),allocatable::v
  allocate(v)
!$omp parallel private(v)
  if (v%x1(1)/="1") print *,v%x1
  if (v%x1(2)/="2") print *,v%x1
!$omp end parallel
print *,'pass'
end
