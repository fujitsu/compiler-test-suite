call update
print *,'pass'
contains
subroutine update
  i=1
  !$omp atomic seq_cst update
  i=i+0
  if(i/=1) print *,'err'
  !$omp atomic seq_cst, update
  i=i+0
  if(i/=1) print *,'err'
  !$omp atomic  update seq_cst
  i=i+0
  if(i/=1) print *,'err'
  !$omp atomic  update, seq_cst
  i=i+0
  if(i/=1) print *,'err'
  !$omp atomic update seq_cst
  i=i+0
  !$omp end atomic 
  if(i/=1) print *,'err'
  !$omp atomic update, seq_cst
  i=i+0
  !$omp end atomic 
  if(i/=1) print *,'err'
  !$omp atomic seq_cst update
  i=i+0
  !$omp end atomic 
  if(i/=1) print *,'err'
  !$omp atomic seq_cst,update
  i=i+0
  !$omp end atomic 
  if(i/=1) print *,'err'
  !$omp atomic  update
  i=i+0
  if(i/=1) print *,'err'
  !$omp atomic  update
  i=i+0
  !$omp end atomic
  if(i/=1) print *,'err'
end subroutine update
end program
