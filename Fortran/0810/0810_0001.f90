integer,allocatable :: a[:]
!$omp THREADPRIVATE(a)
!$omp parallel copyin(a)
do i=1,1
end do
!$omp end parallel 
end
