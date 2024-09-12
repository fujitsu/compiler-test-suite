subroutine sub(a,b,c,n,m)
complex(kind=8),dimension(1:n) :: a,b,c
do i=1,n
  a(1) = a(1) + b(i)
enddo
do i=1,m
  c(1) = b(i)
  a(1) = c(1) + b(i)
enddo
end subroutine
program main
integer,parameter :: n=100
integer,parameter :: m=100
complex(kind=8),dimension(1:n) :: a,b,c
real(kind=8),parameter :: answer = 2.0_8
real(kind=8),parameter :: diff   = 0.0_8
a=(0.0,0.0)
b=(1.0,1.0)
c=(2.0,2.0)
call sub(a,b,c,n,m)
if (((real(a(1)) - answer) .le. diff) .and. ((imag(a(1)) - answer) .le. diff)) then
  print *,"ok"
else
  print *,"ng"
endif
end program
