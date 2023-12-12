subroutine sub(a,b,c,d,m1,m2,m3,m4,n)
real(8),dimension(1:n,1:n) :: a,b,c,d
integer,dimension(1:n,1:n) :: m1,m2,m3,m4

do j=1,n
  do i=1,n
    if (0 .gt. m1(i,j) + m2(i,j)) then
      if (0 .gt. m3(i,j) + m4(i,j)) then
        a(i,j) = b(i,j) + c(i,j)*d(i,j)
      endif
    endif
  enddo
enddo
end subroutine

program main
integer,parameter :: n=100
real(8),dimension(1:n,1:n) :: a,b,c,d
integer,dimension(1:n,1:n) :: m1,m2,m3,m4
real(8) res
real(8),parameter :: ans =500050.0_8
real(8),parameter :: error=     0.00001_8

a = reshape((/(real(i,kind=8)/1./n,i=1,n*n)/),(/n,n/))
b = reshape((/(real(i,kind=8)/2./n,i=1,n*n)/),(/n,n/))
c = reshape((/(real(i,kind=8)/3./n,i=1,n*n)/),(/n,n/))
d = reshape((/(real(i,kind=8)/4./n,i=1,n*n)/),(/n,n/))
m1 = reshape((/(mod(i,2),i=1,n*n)/),(/n,n/))
m2 = reshape((/(mod(i,3),i=1,n*n)/),(/n,n/))
m3 = reshape((/(mod(i,4),i=1,n*n)/),(/n,n/))
m4 = reshape((/(mod(i,5),i=1,n*n)/),(/n,n/))
call sub(a,b,c,d,m1,m2,m3,m4,n)
res = sum(a)
if (abs(res - ans) .le. error) then
  print *,"ok"
else
  print *,"ng",res," != ",ans
endif
end program
