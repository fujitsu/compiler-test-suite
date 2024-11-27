program main
implicit none
integer::a=1
integer::b=2
integer::c=0
!$omp PARALLEL WORKSHARE if(parallel:a==b)
!$omp atomic
    c=c+1
!$omp end atomic
  !$omp end PARALLEL WORKSHARE
  if(c==1) then
    print *, 'pass'
  else
    print *, 'c=',c
  endif
end program
