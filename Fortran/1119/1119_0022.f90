call write
print *,'pass'
contains
subroutine write
  !$omp atomic seq_cst write
  j=1
  if(j/=1) print *,'err'
  !$omp atomic seq_cst, write
  j=1
  if(j/=1) print *,'err'
  !$omp atomic  write seq_cst
  j=1
  if(j/=1) print *,'err'
  !$omp atomic  write, seq_cst
  j=1
  if(j/=1) print *,'err'
  !$omp atomic write seq_cst
  j=1
  !$omp end atomic 
  if(j/=1) print *,'err'
  !$omp atomic write, seq_cst
  j=1
  !$omp end atomic 
  if(j/=1) print *,'err'
  !$omp atomic seq_cst write
  j=1
  !$omp end atomic 
  if(j/=1) print *,'err'
  !$omp atomic seq_cst,write
  j=1
  !$omp end atomic 
  if(j/=1) print *,'err'
  !$omp atomic  write
  j=1
  if(j/=1) print *,'err'
  !$omp atomic  write
  j=1
  !$omp end atomic
  if(j/=1) print *,'err'
end subroutine write
end program
