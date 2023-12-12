subroutine sub(a,b,c,d,x,y,z,m1,m2,m3,n)
real(8),dimension(1:n) :: a,b,c,d,x,y,z
integer,dimension(1:n) :: m1,m2,m3

do i=1,n
   if (m1(i) + m2(i) .ge. 0) then
      a(i) = b(i) + c(i)*d(i)
   endif
enddo
end subroutine

program main
integer,parameter :: n=100
integer,parameter :: ians=28
real(8),dimension(1:n) :: a,b,c,d,x,y,z
integer,dimension(1:n) :: m1,m2,m3

a = (/(real(i,kind=8)/1./n,i=1,n)/)
b = (/(real(i,kind=8)/2./n,i=1,n)/)
c = (/(real(i,kind=8)/3./n,i=1,n)/)
d = (/(real(i,kind=8)/4./n,i=1,n)/)
x = (/(real(i,kind=8)/2./n,i=1,n)/)
y = (/(real(i,kind=8)/3./n,i=1,n)/)
z = (/(real(i,kind=8)/4./n,i=1,n)/)
m1 = (/(mod(i,2),i=1,n)/)
m2 = (/(mod(i,3),i=1,n)/)
m3 = (/(mod(i,4),i=1,n)/)
call sub(a,b,c,d,x,y,z,m1,m2,m3,n)
ires = int(sum(a),kind=4)
if (ires .eq. ians) then
   print *,"ok"
else
   print *,"ng",ires," != ",ians
endif
end program
