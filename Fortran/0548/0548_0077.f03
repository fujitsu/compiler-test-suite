type x
integer::x1=1
end type x
type(x),allocatable::v
allocate(v)
if (v%x1/=1) print *,'err1'
!$omp task private(v)
if (v%x1/=1) print *,'err2'
!$omp end task
print *,'pass'
end
