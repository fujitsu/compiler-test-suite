subroutine sub(a,b,c,n)
real(8),dimension(1:n,1:n,1:n) :: a,b,c

do k=1,n
 do j=1,n
  do i=1,n
    a(i,j,k) = a(i,j,k) + b(i,j,k) + c(i,j,k)
  enddo
 enddo
enddo

do k=1,n
 do j=1,n
  do i=1,n
    a(i,j,k) = a(i,j,k) + b(i,j,k) + c(i,j,k)
  enddo
 enddo
enddo
end subroutine

program main
integer,parameter :: ians=5000
integer,parameter :: n=10
real(8),dimension(1:n,1:n,1:n) :: a,b,c

a = 1.
b = 1.
c = 1.

call sub(a,b,c,n)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program
