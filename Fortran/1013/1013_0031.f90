complex(4)::a(2)
!$omp threadprivate(a)
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
