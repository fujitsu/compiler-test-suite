subroutine sub(a,b,c,n)
real(8),dimension(1:n) :: a
integer,dimension(1:n) :: b,c

do k=1,n
 do j=1,n
  do i=1,n
    a(b(c(i))) = i+j+k
  enddo
 enddo
enddo
end subroutine

program main
integer,parameter :: ians=1245
integer,parameter :: n=10
real(8),dimension(1:n,1:n,1:n) :: a
integer,dimension(1:n) :: b,c

a = 1.
b = (/(i,i=n,1,-1)/)
c = (/(i,i=1,n)/)

call sub(a,b,c,n)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program
