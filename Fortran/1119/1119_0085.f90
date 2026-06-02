  !$omp parallel default(firstprivate)
i=1
!$omp taskgroup
if(i/=1) print *,'err'
!$omp end taskgroup
!$omp endparallel
print *,'pass'
  end 
