subroutine pam(a,b,c,n,r)
real(kind=8),dimension(1:n,1:n) :: a,b,c
real(kind=8) t,r
t = 0.
do j=1,n
  do i=1,n
    t = t + (a(i,j) - b(i,j))
    r = t * c(i,j)
  enddo
enddo
end subroutine

program main
integer,parameter :: n=100
real(kind=8),dimension(1:n,1:n) :: a,b,c
real(kind=8) r
real(kind=8),parameter :: answer =  0._8
real(kind=8),parameter :: diff   =  0.0000000_8
a = 1._8
b = 1._8
c = 1._8
r = 1._8
call pam(a,b,c,n,r)
if (abs(r - answer) .le. diff) then
  print *,"ok"
else
  print *,"ng",r
endif
end program
