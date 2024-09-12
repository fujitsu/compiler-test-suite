subroutine sub(a,b,c,d,e,f,n)
real(8),dimension(1:100) :: a,d,e
real(8),dimension(1:100,1:100) :: b,f
real(8),dimension(1:100,1:100,1:100) :: c

do k=1,n
 do j=1,n
  do i=1,n
    c(i,j,k) = a(i) + b(i,j) + c(i,j,k) + d(i) + e(i) + f(i,k)
  enddo
 enddo
enddo
end subroutine

program main
integer,parameter :: ians=9000000
integer,parameter :: n=100
real(8),dimension(1:100) :: a,d,e
real(8),dimension(1:100,1:100) :: b,f
real(8),dimension(1:100,1:100,1:100) :: c

a = 1.
b = 1.
c = 1.
d = 2.
e = 3.
f = 1.

call sub(a,b,c,d,e,f,n)
if (int(sum(c)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(c)), ians
endif
end program
