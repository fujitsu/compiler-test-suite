subroutine sub1(a,b,c,n)
  real(8),dimension(1:n,1:n) :: a,b,c


  do i=1,n

     do j=1,n
        a(j,i) = b(j,i) + c(i,j)
     enddo
  enddo

end subroutine sub1

subroutine sub2(a,b,c,n)
  real(8),dimension(1:n,1:n) :: a,b,c


  do i=1,n

     do j=1,n
        a(j,i) = b(j,i) + c(i,j)
     enddo
  enddo

end subroutine sub2

program main
integer,parameter :: n=50
integer,parameter :: ians=5000
real(8),dimension(1:n,1:n) :: a,b,c

a = 0.
b = 1.
c = 1.

call sub1(a,b,c,n)
call sub2(a,b,c,n)

if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif

end program
