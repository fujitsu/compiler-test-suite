subroutine sub(a,b,c,d,n)
real(8),dimension(1:n) :: d
real(8),dimension(1:n,1:n,1:n) :: b,c
real(8),dimension(1:n,1:n,1:n,1:2) :: a

do k=1,n
 do j=1,n-1
  do i=1,n
    b(i,j,k) = a(i,j,k,1) + a(i,j+1,k,1) + a(i,j,k,2) + c(i,j,k) + d(i)
  enddo
 enddo
enddo
end subroutine

program main
integer,parameter :: ians=4960000
integer,parameter :: n=100
real(8),dimension(1:n) :: d
real(8),dimension(1:n,1:n,1:n) :: b,c
real(8),dimension(1:n,1:n,1:n,1:2) :: a

a = 1.
b = 1.
c = 1.
d = 1.

call sub(a,b,c,d,n)
if (int(sum(b)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(b)), ians
endif
end program
