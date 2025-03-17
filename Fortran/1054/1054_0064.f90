integer,allocatable::a
!$omp threadprivate(a)
!$omp parallel
allocate(a)
!$omp end parallel
!$omp parallel
  a=1
!$omp single
  a=2
!$omp end single copyprivate(a)
  if (a /= 2) then
    print *,'ng 101',a
  endif
!$omp end parallel
print *,'pass'
end
