i=1
  !$omp taskgroup
  !$omp taskgroup
if(i/=1) print *,'err'
!$omp endtaskgroup
  !$omp endtaskgroup
print *,"pass"
  end program
