type x
integer::x1=1
end type x
type(x),allocatable::v
allocate(v)
if (v%x1/=1) print *,'err1'
!$omp parallel private(v)
if (v%x1/=1) print *,'err2'
!$omp end parallel
print *,'pass'
end
