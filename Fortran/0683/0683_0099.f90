subroutine sub(a, n)
  implicit none
  integer*8 i,n
  complex*16 a(n),ss
  common/com2/ss
  !$omp simd reduction(*:ss)
  do i=1,n
     ss = ss * a(i)
  end do
end subroutine

block data
   implicit none
   complex*16 data, result
   common/input/data(5), result
   data data/(1.0,1.0),(2.0,0.3),(0.5,3.1),(-3.0,0.1),(0.3,-2.0)/
   data result/ (-15069241.57076574,-9596799.170521146)/
end
program main
  implicit none
  integer*8 i,n
  parameter(n=21)
  complex*16 a,ss
  common/com1/a(n)
  common/com2/ss
   complex*16 data, result
   common/input/data(5), result
  ss =1.0
  do i=1,n
     a(i) = data(mod(i,5)+1)
  end do
  call sub(a, n)
  if (abs(ss-result) < 0.5) then
     print *, "PASS"
  else
     print *, ss, abs(ss-result)
  endif
end program
