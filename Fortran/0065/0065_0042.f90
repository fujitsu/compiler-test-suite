subroutine sub(a,b,c,d,m1,m2,m3,m4,n)
real(8),dimension(1:n,1:n) :: a,b,c,d
integer,dimension(1:n,1:n) :: m1,m2,m3,m4

do j=1,n
  do i=1,n
    if (m1(i,j) .lt. (m2(i,j) * 2)) then
      if ((m3(i,j) * 2 - m4(i,j)) .lt. 0) then
        a(i,j) = b(i,j) + c(i,j)*d(i,j)
      else
        a(i,j) = b(i,j) - c(i,j)*d(i,j)
      endif
    endif
  enddo
enddo
end subroutine

program main
integer,parameter :: n=100
integer,parameter :: ians=-1770783
real(8),dimension(1:n,1:n) :: a,b,c,d
integer,dimension(1:n,1:n) :: m1,m2,m3,m4

a = reshape((/(real(i,kind=8)/1./n,i=1,n*n)/),(/n,n/))
b = reshape((/(real(i,kind=8)/2./n,i=1,n*n)/),(/n,n/))
c = reshape((/(real(i,kind=8)/3./n,i=1,n*n)/),(/n,n/))
d = reshape((/(real(i,kind=8)/4./n,i=1,n*n)/),(/n,n/))
do j=1,n
  do i=1,n
    iii = i+(j-1)*n
    if (mod(iii,4) .eq. 0) then
       m1(i,j) = mod(iii,2)
    else
       m1(i,j) = -mod(iii,2)
    endif
    if (mod(iii,8) .eq. 0) then
       m2(i,j) = -mod(iii,3)
    else
       m2(i,j) = mod(iii,3)
    endif
    if (mod(iii,12) .eq. 0) then
       m3(i,j) = -mod(iii,4)
    else
       m3(i,j) = mod(iii,4)
    endif
    if (mod(iii,16) .eq. 0) then
       m4(i,j) = mod(iii,4)
    else
       m4(i,j) = -mod(iii,4)
    endif
 enddo
enddo
call sub(a,b,c,d,m1,m2,m3,m4,n)
ires = int(sum(a),kind=4)
if (ires .eq. ians) then
  print *,"ok"
else
  print *,"ng",ires," != ",ians
endif
end program
