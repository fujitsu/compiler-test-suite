subroutine sub1(a,b,n)
real(8),dimension(1:n) :: a,b
end subroutine

program main
integer,parameter :: n=50
integer,parameter :: ians1=50
real(8),dimension(1:n) :: a,b
integer :: x1,x2
volatile :: a,b,x1,x2

a = 0.
b = 1.

x1 = 10
x2 = 2

do i=1,n
   a(i) = a(i) + b(i)
enddo


if (int(sum(a)) .eq. ians1) then
  print *,"ok"
else
  print *,"ng(a)", int(sum(a)), ians1
endif

end program
