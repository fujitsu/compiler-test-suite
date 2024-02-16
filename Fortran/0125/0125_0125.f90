subroutine sub(a,b,n)
real(8),dimension(1:n,1:n,1:n) :: a,b
do k=1,n,40
 do j=1,n,40
  do i=1,n,40
   a(i,j,k) = b(3,i,3) + 1
  enddo
 enddo
enddo
end subroutine
program main
integer,parameter :: n=80
integer,parameter :: ians=512008
real(8),dimension(1:n,1:n,1:n) :: a,b
a = 1.
b = 1.

call sub(a,b,n)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program
