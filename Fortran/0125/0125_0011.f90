subroutine sub(n)
real(4) :: a,b
real(4) :: a1,b1
real(4) :: a2,b2
common /space0/ a(201),b(201)
common /space1/ a1(201),b1(201)
common /space2/ a2(201),b2(201)

do i=1,n
  a(i) = a1(i) + a2(i)
enddo

do i=1,n
  b(i) = b1(i) + b2(i)
enddo

end subroutine

program main
integer,parameter :: n=201
real(4) :: a,b
real(4) :: a1,b1
real(4) :: a2,b2
common /space0/ a(n),b(n)
common /space1/ a1(n),b1(n)
common /space2/ a2(n),b2(n)

a = 0.
a1 = 1.
a2 = 1.

b = 0.
b1 = 1.
b2 = 1.

call sub(n)

print *, sum(a)
print *, sum(b)

end program
