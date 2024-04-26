subroutine sub(a, b, n)
real(8),dimension(2,2,2,n) :: a,b

do i4=1, n
do i3=1, 2
do i2=1, 2
do i1=1, 2
      a(i1,i2,i3,i4) = b(i1,i2,i3,i4)
end do
end do
end do
end do

end

program main
integer,parameter :: n=50
real(8),dimension(2,2,2,n) :: a,b

a = 0.
b = 1.

call sub(a,b,n)
print *,sum(a)
end program
