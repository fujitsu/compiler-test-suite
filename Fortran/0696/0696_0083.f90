subroutine sub(a,b,c,n)
real(8),dimension(1:n,1:n,1:n,1:n,1:n) :: a,b,c

do m=1,n
 do l=1,n
  do k=1,n
   do j=1,n
    do i=1,n
      a(i,j,k,l,m) = a(i,j,k,l,m) + b(i,j,k,l,m) + c(i,j,k,l,m) 
    enddo
   enddo
  enddo
 enddo
enddo
end subroutine

program main
integer,parameter :: ians=300000
integer,parameter :: n=10
real(8),dimension(1:n,1:n,1:n,1:n,1:n) :: a,b,c

a = 1.
b = 1.
c = 1.

call sub(a,b,c,n)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(c)), ians
endif
end program
