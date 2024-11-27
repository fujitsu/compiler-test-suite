integer,allocatable::a
!$omp threadprivate(a)
!$omp parallel
allocate(a)
!$omp end parallel
a=1
!$omp parallel copyin(a)
  if (a /= 1) then
    print *,'ng 101',a
  endif
!$omp end parallel
print *,'pass'    
end
