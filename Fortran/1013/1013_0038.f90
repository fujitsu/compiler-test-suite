complex(4),pointer::a
complex(4),target::t
!$omp threadprivate(a)
  t=(0.0,0.0)
!$omp parallel
!$omp single
  t=(1.0,2.0)
  a=>t
!$omp end single copyprivate(a)
  if (a /= (1.0,2.0)) then
    print *,'ng 101',a
  endif
!$omp end parallel
print *,'pass'
end
