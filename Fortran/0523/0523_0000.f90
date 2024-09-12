program main
implicit none
integer::i
integer::k=0
!$omp ordered 
do i=1,1
k=k+1
enddo
!$omp end ordered
  if(k==1) then
    print *,'pass'
  else
    print *,'ng',k
  endif
end program
