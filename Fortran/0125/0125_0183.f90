subroutine sub(n)
real(8) :: a0
real(8) :: a1
real(8) :: a2
real(8) :: a3
real(8) :: a4
real(8) :: a5
real(8) :: a6
real(8) :: a7
real(8) :: a8
real(8) :: a9
common /space0/ a0(10,10)
common /space1/ a1(10,10)
common /space2/ a2(10,10)
common /space3/ a3(10,10)
common /space4/ a4(10,10)
common /space5/ a5(10,10)
common /space6/ a6(10,10)
common /space7/ a7(10,10)
common /space8/ a8(10,10)
common /space9/ a9(10,10)

do j=1,n
do i=1,n
  a0(i,j) = 1.
  a1(i,j) = 1.
  a2(i,j) = 1.
  a3(i,j) = 1.
  a4(i,j) = 1.
  a5(i,j) = 1.
  a6(i,j) = 1.
  a7(i,j) = 1.
  a8(i,j) = 1.
  a9(i,j) = 1.
enddo
enddo

do j=1,n
do i=1,n
  a0(i,j) = a0(i,j) + 1.
  a1(i,j) = a1(i,j) + 1.
  a2(i,j) = a2(i,j) + 1.
  a3(i,j) = a3(i,j) + 1.
  a4(i,j) = a4(i,j) + 1.
  a5(i,j) = a5(i,j) + 1.
  a6(i,j) = a6(i,j) + 1.
  a7(i,j) = a7(i,j) + 1.
  a8(i,j) = a8(i,j) + 1.
  a9(i,j) = a9(i,j) + 1.
enddo
enddo

do j=1,n
do i=1,n
  a0(i,j) = 0.
  a1(i,j) = a1(i,j) + 1.
  a2(i,j) = 0.
  a3(i,j) = a3(i,j) + 1.
  a4(i,j) = 0.
  a5(i,j) = a5(i,j) + 1.
  a6(i,j) = 0.
  a7(i,j) = a7(i,j) + 1.
  a8(i,j) = 0.
  a9(i,j) = a9(i,j) + 1.
enddo
enddo

end subroutine

program main
integer,parameter :: n=10
real(8) :: a0
real(8) :: a1
real(8) :: a2
real(8) :: a3
real(8) :: a4
real(8) :: a5
real(8) :: a6
real(8) :: a7
real(8) :: a8
real(8) :: a9
common /space0/ a0(n,n)
common /space1/ a1(n,n)
common /space2/ a2(n,n)
common /space3/ a3(n,n)
common /space4/ a4(n,n)
common /space5/ a5(n,n)
common /space6/ a6(n,n)
common /space7/ a7(n,n)
common /space8/ a8(n,n)
common /space9/ a9(n,n)

call sub(n)

print *, a0(10,10)
print *, a1(10,10)
print *, a2(10,10)
print *, a3(10,10)
print *, a4(10,10)
print *, a5(10,10)
print *, a6(10,10)
print *, a7(10,10)
print *, a8(10,10)
print *, a9(10,10)

end program
