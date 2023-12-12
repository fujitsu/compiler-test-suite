subroutine sub(a,b,c,d,e,m1,m2,m3,m4,n)
real(8),dimension(1:n,1:n,1:n) :: a,b,c,d,e
integer,dimension(1:n,1:n,1:n) :: m1,m2,m3,m4

do k=1,n
  do j=1,n
    do i=1,n
      if (m1(i,j,k) + m2(i,j,k) .ge. 0) then
        if (m3(i,j,k) + m4(i,j,k) .ge. 0) then
          a(i,j,k) = b(i,j,k) + c(i,j,k)*d(i,j,k)
        else
          a(i,j,k) = b(i,j,k) - c(i,j,k)*e(i,j,k)
        endif
      endif
    enddo
  enddo
enddo
end subroutine

program main
integer,parameter :: n=30
integer,parameter :: ians=121505
real(8),dimension(1:n,1:n,1:n) :: a,b,c,d,e
integer,dimension(1:n,1:n,1:n) :: m1,m2,m3,m4

a = reshape((/(real(i,kind=8)/100./n,i=1,n*n*n)/),(/n,n,n/))
b = reshape((/(real(i,kind=8)/200./n,i=1,n*n*n)/),(/n,n,n/))
c = reshape((/(real(i,kind=8)/300./n,i=1,n*n*n)/),(/n,n,n/))
d = reshape((/(real(i,kind=8)/400./n,i=1,n*n*n)/),(/n,n,n/))
e = reshape((/(real(i,kind=8)/500./n,i=1,n*n*n)/),(/n,n,n/))
m1 = reshape((/(mod(i,2),i=1,n*n*n)/),(/n,n,n/))
m2 = reshape((/(mod(i,3),i=1,n*n*n)/),(/n,n,n/))
m3 = reshape((/(mod(i,4),i=1,n*n*n)/),(/n,n,n/))
m4 = reshape((/(mod(i,5),i=1,n*n*n)/),(/n,n,n/))
call sub(a,b,c,d,e,m1,m2,m3,m4,n)
ires = int(sum(a),kind=4)
if (ires .eq. ians) then
  print *,"ok"
else
  print *,"ng",ires," != ",ians
endif
end program
