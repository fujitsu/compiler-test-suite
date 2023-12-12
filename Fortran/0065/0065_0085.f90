subroutine sub(a,b,c,d,m1,m2,m3,m4,n)
real(8),dimension(1:n) :: a,b,c,d
integer(8),dimension(1:n) :: m1,m2,m3,m4

do i=1,n
   if ((m1(i) + m2(i) .le. m3(i)) .and. (m4(i) .le. 0)) then
      a(i) = b(i) + c(i)*d(i)
   else
      a(i) = b(i) - c(i)*d(i)
   endif
enddo
end subroutine

program main
integer,parameter :: n=100
real(8),parameter :: ans =24.95355000000000
real(8),parameter :: error= 0.000001
real(8),dimension(1:n) :: a,b,c,d
real(8) res
integer(8),dimension(1:n) :: m1,m2,m3,m4

a = (/(real(i,kind=8)/1./n,i=1,n)/)
b = (/(real(i,kind=8)/2./n,i=1,n)/)
c = (/(real(i,kind=8)/3./n,i=1,n)/)
d = (/(real(i,kind=8)/4./n,i=1,n)/)
m1 = (/(mod(i,1),i=1,n)/)
m2 = (/(mod(i,11),i=1,n)/)
m3 = (/(mod(i,21),i=1,n)/)
m4 = (/(mod(i,2),i=1,n)/)
call sub(a,b,c,d,m1,m2,m3,m4,n)
res = sum(a)
if (abs(res - ans) <= error)  then
   print *,"ok"
else
   print *,"ng",res," != ",ans
endif
end program
