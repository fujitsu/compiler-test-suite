subroutine sub1(a,b,c,n)
real(8),dimension(1:2,1:n) :: a,b
real(8),dimension(1:n,1:2) :: c

  do i=1,n

     do j=1,2
        a(j,i) = b(j,i) + c(i,j)
     enddo
  enddo

end subroutine sub1

program main
integer,parameter :: n=50
integer,parameter :: ians=200
real(8),dimension(1:2,1:n) :: a,b
real(8),dimension(1:n,1:2) :: c

a = 0.
b = 1.
c = 1.

call sub1(a,b,c,n)

if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif

end program
