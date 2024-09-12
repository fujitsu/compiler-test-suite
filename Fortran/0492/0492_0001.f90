program main
implicit none
integer,parameter::N=100
integer::a=1
integer::b=2
integer::c=0
integer::i
!$omp parallel do if(parallel:a==b)
  do i=1,N
!$omp atomic
    c=c+1
!$omp end atomic
  end do
  !$omp end parallel do
  if(c==100) then
    print *, 'pass'
  else
    print *, 'c=',c
  endif
end program