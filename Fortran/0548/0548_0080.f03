  type x
     integer::x1=1
  end type x
  class(x),allocatable,volatile,asynchronous::v(:)
  allocate(v(2))
  if (v(1)%x1/=1) print *,'err1'
  if (v(2)%x1/=1) print *,'err2'
!$omp parallel private(v)
associate (y=>v)
  if (y(1)%x1/=1) print *,'err3'
  if (y(2)%x1/=1) print *,'err4'
end associate
!$omp end parallel
print *,'pass'
end
