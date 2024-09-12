subroutine sub(c,d,n)
real(8),dimension(1:n,1:n) :: d
real(8),dimension(1:n,1:n,1:n) :: c

do k=1,n
 do j=1,n
  do i=1,n
    c(i,j,k) = c(i,j,k) + c(i,2,k) + c(i,j,1) + d(i,j)
  enddo
 enddo
enddo
end subroutine

program main
integer,parameter :: ians=15731200
integer,parameter :: n=100
real(8),dimension(1:n,1:n) :: d
real(8),dimension(1:n,1:n,1:n) :: c

c = 1.
d = 1.

call sub(c,d,n)
if (int(sum(c)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(c)), ians
endif
end program
