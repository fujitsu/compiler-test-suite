subroutine foo(a,b)
real(8) :: a,b
a = dtan(b)
end subroutine

program main
real(8),dimension(1:1000) :: a,b
real(8),parameter :: ans = 309.3362496096235_8
real(8),parameter :: error =  0.0000000001_8
b = 0.3_8
do i=1,1000
  call foo(a(i),b(i))
enddo
if (abs(sum(a)-ans) .gt. error) then
  print *,"ng", sum(a), ans
else
  print *,"ok"
endif
end program
