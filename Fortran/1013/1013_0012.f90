complex(4),pointer::a(:)
complex(4),target::t(2)
!$omp threadprivate(a)
t=(1.0,2.0)
a=>t
!$omp parallel copyin(a)
  if (any(a /= (1.0,2.0))) then
    print *,'ng 101',a
  endif
!$omp end parallel
print *,'pass'    
end
