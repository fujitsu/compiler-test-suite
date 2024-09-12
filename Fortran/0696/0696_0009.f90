subroutine sub1(a,b,n,way1,way2)
real(8),dimension(1:n) :: a
real(8),dimension(1:n,1:n) :: b
integer :: way1,way2

do j=1,n
   do i=1,n
      a(i) = b(i,j) + 1
   enddo
enddo

end subroutine

program main
integer,parameter :: n=50
integer,parameter :: ians1=100
real(8),dimension(1:n) :: a
real(8),dimension(1:n,1:n) :: b

a = 0.
b = 1.

call sub1(a,b,n,8,4)
if (int(sum(a)) .eq. ians1) then
  print *,"ok"
else
  print *,"ng(a)", int(sum(a)), ians1
endif

end program
