program main
  REAL(8) A(10)
  COMMON //A
  !OCL SIMD(ALIGNED)
  DO I=2,10
     A(I) = 1
  END DO
  print *,int(A)
end program

block data
  REAL(8) A(10)
  COMMON //A
  data a/10*0/
end 
