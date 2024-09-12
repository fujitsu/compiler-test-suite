subroutine sub(a,n)
real(8),dimension(1:n,1:n,1:n) :: a

do k=1,n
 do j=1,n
  do i=1,n
    a(i,j,k) = i+j+k
  enddo
 enddo
enddo
end subroutine

program main
integer,parameter :: ians=16500
integer,parameter :: n=10
real(8),dimension(1:n,1:n,1:n) :: a

a = 1.

call sub(a,n)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program
