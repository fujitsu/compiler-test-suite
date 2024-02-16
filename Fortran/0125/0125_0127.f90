subroutine sub(a,b,n,l)
real(8),dimension(1:n,1:n,1:n) :: a,b
do k=1,n,l
 do j=1,n,l
  do i=1,n,l
   a(i,j,k) = b(i,1,1) + 1
  enddo
 enddo
enddo
end subroutine
program main
integer,parameter :: n=30
integer,parameter :: ians=30375
real(8),dimension(1:n,1:n,1:n) :: a,b
a = 1.
b = 1.

call sub(a,b,n,2)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program
