  character*4 ch1(100), ch2(100)
  ch2 = 'PASS'
!$omp simd
  do i=1,100
     ch1(i) = ch2(i)
  enddo
  print *, ch1(1)
end program

