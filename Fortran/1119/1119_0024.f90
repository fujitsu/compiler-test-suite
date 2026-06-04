call sec_cst
print *,'pass'
contains
subroutine sec_cst
  i=1
  !$omp atomic seq_cst
  i=i+0
  if(i/=1) print *,'err'
  !$omp atomic seq_cst
  i=i+0
  !$omp end atomic
  if(i/=1) print *,'err'
end subroutine sec_cst
end program
