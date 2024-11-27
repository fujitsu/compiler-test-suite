integer,pointer::a
integer,target::t
!$omp threadprivate(a)
t=1
a=>t
!$omp parallel copyin(a)
  if (a /= 1) then
    print *,'ng 101',a
  endif
!$omp end parallel
print *,'pass'    
end
