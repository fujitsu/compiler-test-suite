subroutine sub(a,b,c)
real(8),dimension(1:100,1:100,1:100) :: a,b,c

do i=1,100
 do j=1,100
  do k=1,100
   a(k,j,i) = a(k,j,i) + b(k,j,i) +c(k,i,j)
  enddo
 enddo
enddo
end subroutine

program main
integer,parameter :: ians=3000000
integer,parameter :: n=100
real(8),dimension(1:n,1:n,1:n) :: a, b, c

a = 1.
b = 1.
c = 1.

call sub(a,b,c)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program
