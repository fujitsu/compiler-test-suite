  integer::a
  a=1
  call s(a)
print *,'pass'
end program
subroutine s(i)
  integer::i
  integer::k
  k=-1**1
 !$omp atomic capture seq_cst
  j=k
  k=i
  !$omp end atomic 
  if(j/=-1) print *,'err1'
  if(k/=1) print *,'err12'
end subroutine s
