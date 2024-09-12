subroutine sub(c,n)
real(8),dimension(1:n,1:n,1:n) :: c

do k=1,n
 do j=1,n
  do i=1,n-1
    c(i,j,k) = c(i,j,k) - c(i,j,1)
  enddo
 enddo
enddo
end subroutine

program main
integer,parameter :: ians=990100
integer,parameter :: n=100
real(8),dimension(1:n,1:n,1:n) :: c

c = 1.

call sub(c,n)
if (int(sum(c)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(c)), ians
endif
end program
