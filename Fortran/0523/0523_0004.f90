program main
implicit none
integer::i
integer::k=0
!$omp ordered simd
!$omp do simd
do i=1,1
k=k+1
enddo
!$omp end do simd
!$omp end ordered
  if(k==1) then
    print *,'pass'
  else
    print *,'ng',k
  endif
end program
