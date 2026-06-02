call cap_wri
print *,'pass'
contains
subroutine cap_wri
  i=1
  !$omp atomic capture seq_cst
  j=i
  i=0
  !$omp end atomic 
  if(j/=1) print *,'err'
  !$omp atomic capture, seq_cst
  j=i
  i=0
  !$omp end atomic 
  if(j/=0) print *,'err'
  !$omp atomic seq_cst capture
  j=i
  i=0
  !$omp end atomic 
  if(j/=0) print *,'err'
  !$omp atomic seq_cst,capture
  j=i
  i=0
  !$omp end atomic 
  if(j/=0) print *,'err'
  !$omp atomic  capture
  j=i
  i=0
  !$omp end atomic
  if(j/=0) print *,'err'
  !$omp atomic  capture
  j=i
  i=0
  !$omp end atomic
  if(j/=0) print *,'err'
end subroutine cap_wri
end program
