program main
integer,parameter :: N=32
real(kind=8),parameter :: val=1._8
real(kind=8),dimension(1:N)         :: a,b

a = val
b = val
do i = 1, N-3
  a(i+1) = a(i) + a(i+1) - a(i+2) - b(i)
  a(i+2) = a(i+1) + b(i)
  a(i+3) = a(i+1) - b(i+1)
enddo

print *,sum(a)
end program
