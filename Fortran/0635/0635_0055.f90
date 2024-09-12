subroutine foo(a,n)
real(kind=8),dimension(1:n,1:n) :: a
a(1,1) = 1.
end subroutine

subroutine pam(a,b,c,n,m,r)
real(kind=8),dimension(1:n,1:n) :: a,b,c
real(kind=8) t,r
t = r
do j=1,n
  do i=1,n
    t = t + (a(i,j) - b(i,j))
    r = t * c(i,j)
  enddo
enddo

do i=1,m
  r = r + (a(i,1) - c(i,1))
enddo

call foo(a,n)

do j=1,n
  do i=1,n
    t = t + (b(i,j) - c(i,j))
    r = t * a(i,j)
  enddo
enddo

do i=1,m
  r = r + (b(i,1) - a(i,1))
enddo
end subroutine

program main
integer,parameter :: n=100
real(kind=8),dimension(1:n,1:n) :: a,b,c
real(kind=8) r
real(kind=8),parameter :: answer =  1._8
real(kind=8),parameter :: diff   =  0.0000000_8
a = 1._8
b = 1._8
c = 1._8
r = 1._8
call pam(a,b,c,n,100,r)
if (abs(r - answer) .le. diff) then
  print *,"ok"
else
  print *,"ng",r
endif
end program
