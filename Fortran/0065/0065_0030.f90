subroutine sub(a,b,c,d,m1,m2,m3,m4,n,x)
real(8),dimension(1:n,1:n) :: a,b,c,d
integer,dimension(1:n,1:n) :: m1,m2,m3,m4
real(8) x

do j=1,n
  do i=1,n
    if (m1(i,j) .ne. m2(i,j)) then
      if ((m3(i,j) .ne. 0) .or. (m4(i,j) .ne. 0)) then
        x = x + a(i,j) + c(i,j) * d(i,j)
      else
        x = x - b(i,j) - c(i,j) * d(i,j)
      endif
    endif
  enddo
enddo
end subroutine

program main
integer,parameter :: n=100
integer,parameter :: ians=1974409
real(8),dimension(1:n,1:n) :: a,b,c,d
integer,dimension(1:n,1:n) :: m1,m2,m3,m4
real(8) x

a = reshape((/(real(i,kind=8)/1./n,i=1,n*n)/),(/n,n/))
b = reshape((/(real(i,kind=8)/2./n,i=1,n*n)/),(/n,n/))
c = reshape((/(real(i,kind=8)/3./n,i=1,n*n)/),(/n,n/))
d = reshape((/(real(i,kind=8)/4./n,i=1,n*n)/),(/n,n/))
m1 = reshape((/(mod(i,2),i=1,n*n)/),(/n,n/))
m2 = reshape((/(mod(i,3),i=1,n*n)/),(/n,n/))
m3 = reshape((/(mod(i,4),i=1,n*n)/),(/n,n/))
m4 = reshape((/(mod(i,5),i=1,n*n)/),(/n,n/))
x = 0.
call sub(a,b,c,d,m1,m2,m3,m4,n,x)
ires = int(x,kind=4)
if (ires .eq. ians) then
  print *,"ok"
else
  print *,"ng",ires," != ",ians
endif
end program
