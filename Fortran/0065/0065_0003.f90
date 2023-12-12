subroutine sub(a,b,c,d,x,n)
real(8),dimension(1:n) :: a,b,c,d,x

do i=1,n
  if (x(i) .le. 0._8) then
    a(i) = b(i) + c(i)*d(i)
  else
    a(i) = b(i)
  endif
enddo
end subroutine

program main
integer,parameter :: n=10000
integer,parameter :: ians=2592
real(8),dimension(1:n) :: a,b,c,d,x
integer ires

x = (/(real(mod(i,3),kind=8),i=1,n)/)
a = (/(real(i,kind=8)/1./n,i=1,n)/)
b = (/(real(i,kind=8)/2./n,i=1,n)/)
c = (/(real(i,kind=8)/3./n,i=1,n)/)
d = (/(real(i,kind=8)/4./n,i=1,n)/)
call sub(a,b,c,d,x,n)
ires = int(sum(a),kind=4)
if (ires .eq. ians) then
  print *,"ok"
else
  print *,"ng",ires," != ",ians
endif
end program
