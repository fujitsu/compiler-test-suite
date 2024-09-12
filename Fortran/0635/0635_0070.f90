subroutine pam(a,b,c,n)
real(kind=8),dimension(1:n,1:n) :: a,b,c
do j=2,n
  do i=1,n
    a(i,j) = a(i,j-1) + b(i,j)*c(i,j)
  enddo
enddo
end subroutine

program main
integer,parameter :: n=100
real(kind=8),dimension(1:n,1:n) :: a,b,c
real(kind=8),parameter :: answer = 505000._8
real(kind=8),parameter :: diff   =      0.0000001_8
a = 1._8
b = 1._8
c = 1._8
call pam(a,b,c,n)
if (abs(sum(a) - answer) .le. diff) then
  print *,"ok"
else
  print *,"ng",sum(a)
endif
end program
