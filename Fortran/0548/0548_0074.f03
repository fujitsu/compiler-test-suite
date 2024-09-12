type x
integer::x1=1
end type x
type(x),allocatable::v(:)
allocate(v(2))
if (v(1)%x1/=1) print *,'err1'
if (v(2)%x1/=1) print *,'err2'
!$omp parallel private(v)
if (v(1)%x1/=1) print *,'err3'
if (v(2)%x1/=1) print *,'err4'
!$omp end parallel
print *,'pass'
end
