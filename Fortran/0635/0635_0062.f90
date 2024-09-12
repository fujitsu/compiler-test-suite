subroutine ctd(a,b,n)
complex(kind=8),dimension(1:n) :: a,b
do i=1,n
  a(i) = a(i) / b(i)
enddo
end subroutine

program main
integer,parameter :: n=100
complex(kind=8),dimension(1:n) :: a,b
real(kind=8),parameter :: answer = 1._8
real(kind=8),parameter :: diff   = 0.0000001_8
a = cmplx(1._8,1._8)
b = cmplx(1._8,1._8)
call ctd(a,b,n)
if (abs(real(a(n),kind=8) - answer) .le. diff) then
  print *,"ok"
else
  print *,"ng",a(n)
endif
end program
