integer,allocatable :: a[:]
!$omp task     depend(in:j,a)
do i=1,1
end do
!$omp end task
end
