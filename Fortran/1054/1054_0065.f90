complex(4),allocatable::a(:)
!$omp threadprivate(a)
!$omp parallel
allocate(a(5))
!$omp end parallel
!$omp parallel
  a=(0.0,0.0)
!$omp single
  a=(1.0,2.0)
!$omp end single copyprivate(a)
  if (any(a /= (1.0,2.0))) then
    print *,'ng 101',a
  endif
!$omp end parallel
print *,'pass'
end
