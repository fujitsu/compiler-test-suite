subroutine sub(a01,a02,a03,a04,a05,a06,a07,a08,a09,a10,b,c,d,n)
real(8),dimension(1:n,1:n,1:n) :: a02,a04,a05,a06,a07,a08,a10
real(8),dimension(1:n,1:n) :: a01,a03,a09
integer,dimension(1:n) :: b,c,d

do k=1,n
 do j=1,n
  do i=1,n
    a09(b(i),c(j)) = a01(b(i),c(k)) + a02(b(i),c(j),d(k)) + a03(b(i),c(j)) + a04(b(i),c(j),d(k)) + a05(b(i),c(j),1) + a06(b(i),c(j),d(k)) + a07(b(i),2,c(k)) + a08(b(i),c(j),d(k)) + a10(b(i),c(j),d(k)) 
  enddo
 enddo
enddo
end subroutine

program main
integer,parameter :: ians=80000
integer,parameter :: n=100
real(8),dimension(1:n,1:n,1:n) :: a02,a04,a05,a06,a07,a08,a10
real(8),dimension(1:n,1:n) :: a01,a03,a09
integer,dimension(1:n) :: b,c,d

a01 = 1.
a02 = 1.
a03 = 1.
a04 = 1.
a05 = 1.
a06 = 1.
a07 = 1.
a08 = 1.
a09 = 1.
a10 = 0.
b = (/(i,i=n,1,-1)/)
c = (/(i,i=1,n)/)
d = (/(i,i=1,n)/)

call sub(a01,a02,a03,a04,a05,a06,a07,a08,a09,a10,b,c,d,n)
if (int(sum(a09)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a09)), ians
endif
end program
