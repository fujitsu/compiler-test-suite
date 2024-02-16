subroutine sub(a,b,n)
real(8),dimension(1:n,1:n,1:n) :: a,b
do k=1,n
 do j=1,n
  do i=1,n
   a(i,j,k) = b(10,i,10) + 1
  enddo
 enddo
enddo
end subroutine
program main
integer,parameter :: n=20
integer,parameter :: ians=24000
real(8),dimension(1:n,1:n,1:n) :: a,b
a = 1.
b = 2.

call sub(a,b,n)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program
