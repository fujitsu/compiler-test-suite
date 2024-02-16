subroutine foo(a,b)
complex(8) :: a,b
a = cdexp(b)
end subroutine

program main
complex(8),dimension(1:1000) :: a,b
real(8),parameter :: ans = 398.9105739067397_8
real(8),parameter :: error =  0.00000000001_8
b = cmplx(0.3_8,0.3_8)
do i=1,1000
  call foo(a(i),b(i))
enddo
if (abs(imag(sum(a))-ans) .gt. error) then
  print *,"ng", imag(sum(a)), ans
else
  print *,"ok"
endif
end program
