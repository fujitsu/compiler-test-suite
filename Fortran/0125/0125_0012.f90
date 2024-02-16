subroutine sub(n)
real(8) :: a,b,c
real(8) :: a1,b1,c1
real(8) :: a2,b2,c2
real(4) :: a3,b3,c3
real(4) :: a4,b4,c4
real(4) :: a5,b5,c5
common /space0/ a(201),b(201),c(201)
common /space1/ a1(201),b1(201),c1(201)
common /space2/ a2(201),b2(201),c2(201)
common /space3/ a3(201),b3(201),c3(201)
common /space4/ a4(201),b4(201),c4(201)
common /space5/ a5(201),b5(201),c5(201)

do i=1,n
  a(i) = a1(i) + a2(i)
  b(i) = b1(i) + b2(i)
  c(i) = c1(i) + c2(i)
enddo

do i=1,n
  a3(i) = a4(i) + a5(i)
  b3(i) = b4(i) + b5(i)
  c3(i) = c4(i) + c5(i)
enddo

end subroutine

program main
integer,parameter :: n=201
real(8) :: a,b,c
real(8) :: a1,b1,c1
real(8) :: a2,b2,c2
real(4) :: a3,b3,c3
real(4) :: a4,b4,c4
real(4) :: a5,b5,c5
common /space0/ a(n),b(n),c(n)
common /space1/ a1(n),b1(n),c1(n)
common /space2/ a2(n),b2(n),c2(n)
common /space3/ a3(n),b3(n),c3(n)
common /space4/ a4(n),b4(n),c4(n)
common /space5/ a5(n),b5(n),c5(n)

a = 0.
a1 = 1.
a2 = 1.
a3 = 0.
a4 = 1.
a5 = 1.

b = 0.
b1 = 1.
b2 = 1.
b3 = 0.
b4 = 1.
b5 = 1.

c = 0.
c1 = 1.
c2 = 1.
c3 = 0.
c4 = 1.
c5 = 1.

call sub(n)

print *, sum(a)
print *, sum(b)
print *, sum(c)
print *, sum(a3)
print *, sum(b3)
print *, sum(c3)

end program
