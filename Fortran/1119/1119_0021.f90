call read
print *,'pass'
contains
subroutine read
  i=1
  !$omp atomic seq_cst read
  j=i
  if(j/=1) print *,'err'
  !$omp atomic seq_cst, read
  j=i
  if(j/=1) print *,'err'
  !$omp atomic  read seq_cst
  j=i
  if(j/=1) print *,'err'
  !$omp atomic  read, seq_cst
  j=i
  if(j/=1) print *,'err'
  !$omp atomic read seq_cst
  j=i
  !$omp end atomic 
  if(j/=1) print *,'err'
  !$omp atomic read, seq_cst
  j=i
  !$omp end atomic 
  if(j/=1) print *,'err'
  !$omp atomic seq_cst read
  j=i
  !$omp end atomic 
  if(j/=1) print *,'err'
  !$omp atomic seq_cst,read
  j=i
  !$omp end atomic 
  if(j/=1) print *,'err'
  !$omp atomic  read
  j=i
  if(j/=1) print *,'err'
  !$omp atomic  read
  j=i
  !$omp end atomic
  if(j/=1) print *,'err'
end subroutine read
end program
