complex(4)::a
!$omp threadprivate(a)
a=(1.0,2.0)
!$omp parallel copyin(a)
  if (a /= (1.0,2.0)) then
    print *,'ng 101',a
  endif
!$omp end parallel
print *,'pass'    
end
