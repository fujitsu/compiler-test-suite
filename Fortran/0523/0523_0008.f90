program main
implicit none
integer::k,l
integer::h=0
!$omp ordered 
!$omp parallel do ordered
do k=1,1
!$omp ordered simd
!$omp simd
do l=1,1
h=h+1
enddo
!$omp end ordered
end do
!$omp end parallel do
!$omp end ordered
  if(h==1) then
    print *,'pass'
  else
    print *,'ng',k
  endif
end program

