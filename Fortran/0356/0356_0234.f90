program main
  real(kind=8),dimension(2) :: a
  real(kind=4),dimension(100) :: b,c
  integer(kind=8)::i
  data b/100*1/,c/100*2/
  a=0
  do i=1,100
     b(i) = i
     a(1) = a(1) + b(i)
     a(2) = a(2) + c(i)
  enddo
  print*,a
end program main
