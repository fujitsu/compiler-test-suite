integer::a(2)
!$omp threadprivate(a)
a=1
!$omp parallel copyin(a)
  if (any(a /= 1)) then
    print *,'ng 101',a
  endif
!$omp end parallel
print *,'pass'    
end
