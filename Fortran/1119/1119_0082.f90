  !$omp parallel
  !$omp single
  !$omp taskgroup
  !$omp task
  !$omp critical
  i1=-1
  !$omp end critical
  !$omp critical
  i2=-2
  !$omp end critical

  !$omp end task
  !$omp task
  !$omp critical
  i3=-3
  !$omp end critical
  !$omp end task
  !$omp end taskgroup
  !$omp task
  !$omp critical
  i4=-4
  !$omp end critical
  !$omp end task
  !$omp end single
  !$omp end parallel
  !$omp taskgroup
  if(i1/=-1) print *,'err1'
  if(i2/=-2) print *,'err2'
  if(i3/=-3) print *,'err3'
  if(i4/=-4) print *,'err4'
  !$omp end taskgroup
  print *,"pass"
  end
