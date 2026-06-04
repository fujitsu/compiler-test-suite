character(2), allocatable :: al(:)
allocate(al(2))
al="00"
!$omp parallel private(al)
!$omp single
al="01"
!$omp end single copyprivate(al)
!$omp end parallel
print *,'pass'
END
