program main
implicit none
integer::l
integer::h=0
!$omp ordered simd 
!$omp simd
do l=1,1
h=h+1
enddo
!$omp end ordered
  if(h==1) then
    print *,'pass'
  else
    print *,'ng',h
  endif
end program

