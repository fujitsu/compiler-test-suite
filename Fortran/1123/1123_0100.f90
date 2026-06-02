
program reduction_test
  parameter(N=16)
  real*16 r16(N),r16t
  data r16/1,1,2,2,3,3,4,4,3,3,2,2,1,1,0,0/
  r16t=0
!$omp simd reduction(max:r16t)
  do i=1,N
     r16t = max(r16t , r16(i))
  enddo
  write(6,*) r16t


end program reduction_test
