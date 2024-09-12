subroutine sub(a,n)
real(8),dimension(1:n,1:n,1:n) :: a

do k=1,n
 do j=1,n
  do i=1,n
    a(i,j,1) = i+j+k
  enddo
 enddo
enddo
end subroutine

program main
integer,parameter :: ians=3000000
integer,parameter :: n=100
real(8),dimension(1:n,1:n,1:n) :: a

a = 1.

call sub(a,n)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program
