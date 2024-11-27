integer,pointer::a(:)
integer,target::t(2)
!$omp threadprivate(a)
t=1
a=>t
!$omp parallel copyin(a)
  if (any(a /= 1)) then
    print *,'ng 101',a
  endif
!$omp end parallel
print *,'pass'    
end
