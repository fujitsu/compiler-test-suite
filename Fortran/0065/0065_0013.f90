subroutine sub(a,b,c,d,m1,m2,n)
real(8),dimension(1:n,1:n) :: a,b,c,d
logical,dimension(1:n,1:n) :: m1,m2

do j=1,n
  do i=1,n
    if (.not. m1(i,j)) then
      if (.not. m2(i,j)) then
        a(i,j) = b(i,j) + c(i,j)*d(i,j)
      endif
    endif
  enddo
enddo
end subroutine

program main
integer,parameter :: n=100
integer,parameter :: ians=1342381
real(8),dimension(1:n,1:n) :: a,b,c,d
logical,dimension(1:n,1:n) :: m1,m2

a = reshape((/(real(i,kind=8)/1./n,i=1,n*n)/),(/n,n/))
b = reshape((/(real(i,kind=8)/2./n,i=1,n*n)/),(/n,n/))
c = reshape((/(real(i,kind=8)/3./n,i=1,n*n)/),(/n,n/))
d = reshape((/(real(i,kind=8)/4./n,i=1,n*n)/),(/n,n/))
m1 = reshape((/((mod(i,2).eq.0),i=1,n*n)/),(/n,n/))
m2 = reshape((/((mod(i,3).eq.0),i=1,n*n)/),(/n,n/))
call sub(a,b,c,d,m1,m2,n)
ires = int(sum(a),kind=4)
if (ires .eq. ians) then
  print *,"ok"
else
  print *,"ng",ires," != ",ians
endif
end program
