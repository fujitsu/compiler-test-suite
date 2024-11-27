integer,pointer::a
integer,target::t
!$omp threadprivate(a)
  t=0
!$omp parallel
!$omp single
  t=1
  a=>t
!$omp end single copyprivate(a)
  if (a /= 1) then
    print *,'ng 101',a
  endif
!$omp end parallel
print *,'pass'
end
