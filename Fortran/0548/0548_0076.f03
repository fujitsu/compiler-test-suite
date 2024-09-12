type x
integer::x1=1
end type x
type(x),allocatable::v
allocate(v)
if (v%x1/=1) print *,'err1'
!$omp do lastprivate(v)
do i=1,1
if (v%x1/=1) print *,'err2'
end do
!$omp end do
print *,'pass'
end
