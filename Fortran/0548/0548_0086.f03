  type x
     character::x1="2"
  end type x

  class(x),allocatable::v(:)
  allocate(v(2))
!$omp sections lastprivate(v)
  if (v(1)%x1/="2") print *,v%x1
  if (v(2)%x1/="2") print *,v%x1
!$omp end sections

  print *,'pass'
end
