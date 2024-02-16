subroutine sub(a,b,c,n,l)
real(8),dimension(1:n,1:n,1:n) :: a,b
integer,dimension(1:n) :: c
do k=1,n,l
 do j=1,n,l
  do i=1,n,l
   a(i,j,k) = b(n,n,c(i)) + 1
  enddo
 enddo
enddo
end subroutine
program main
integer,parameter :: n=30
integer,parameter :: ians=30375
real(8),dimension(1:n,1:n,1:n) :: a,b
integer,dimension(1:n) :: c
a = 1.
b = 1.
c = (/(i,i=1,n)/)

call sub(a,b,c,n,2)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program
