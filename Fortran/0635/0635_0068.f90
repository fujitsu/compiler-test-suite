subroutine pam(a,b,c,n,m)
real(kind=8),dimension(1:n,1:n) :: a,b,c
do j=1,n
  do i=1,n
    a(i,j) = a(i,j) + b(i,j)*c(i,j)
  enddo
enddo
a(1,1) = 1._8
do j=2,m
  do i=2,m
    a(i,j) = a(i,j) - b(i-1,j-1)
  enddo
enddo
end subroutine

program main
integer,parameter :: n=100
real(kind=8),dimension(1:n,1:n) :: a,b,c
real(kind=8),parameter :: answer = 17598._8
real(kind=8),parameter :: diff   =     0.0000001_8
a = 1._8
b = 1._8
c = 1._8
call pam(a,b,c,n,50)
if (abs(sum(a) - answer) .le. diff) then
  print *,"ok"
else
  print *,"ng",sum(a)
endif
end program
