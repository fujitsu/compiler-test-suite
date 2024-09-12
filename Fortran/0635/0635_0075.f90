subroutine pam(a,b,c,n,r)
real(kind=8),dimension(1:n,1:n) :: a,b,c
real(kind=8) r
do j=2,n
  if (r>0._8) then
    do i=2,n
      a(i,j) = a(i,j-1) + b(i,j)*c(i,j)
    enddo
  endif
enddo
end subroutine

program main
integer,parameter :: n=100
real(kind=8),dimension(1:n,1:n) :: a,b,c
real(kind=8),parameter :: answer = 500050._8
real(kind=8),parameter :: diff   =      0.0000001_8
a = 1._8
b = 1._8
c = 1._8
call pam(a,b,c,n,1._8)
if (abs(sum(a) - answer) .le. diff) then
  print *,"ok"
else
  print *,"ng",sum(a)
endif
end program
