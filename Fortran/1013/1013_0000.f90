complex(4),allocatable::a(:)
!$omp threadprivate(a)
!$omp parallel
allocate(a(2))
!$omp end parallel
a=(1.0,2.0)
!$omp parallel copyin(a)
  if (any(a /= (1.0,2.0))) then
    print *,'ng 101',a
  endif
!$omp end parallel
print *,'pass'    
end