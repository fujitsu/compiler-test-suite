integer::a
!$omp threadprivate(a)
!$omp parallel
  a=0
!$omp single
  a=1
!$omp end single copyprivate(a)
  if (a /= 1) then
    print *,'ng 101',a
  endif
!$omp end parallel
print *,'pass'
end
