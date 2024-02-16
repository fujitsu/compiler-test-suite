subroutine sub(a1,b1,a21,b21,a22,b22,a31,b31,a32,b32,a33,b33,n)
real(8),dimension(1:2) :: a1,b1
real(8),dimension(1:2,1:n) :: a21,b21
real(8),dimension(1:2,1:2) :: a22,b22
real(8),dimension(1:2,1:n,1:n) :: a31,b31
real(8),dimension(1:2,1:2,1:n) :: a32,b32
real(8),dimension(1:2,1:2,1:4) :: a33,b33

do i=1,2
   a1(i) = b1(i)
enddo

do j=1,n
do i=1,2
   a21(i,j) = b21(i,j)
enddo
enddo

do j=1,2
do i=1,2
   a22(i,j) = b22(i,j)
enddo
enddo

do k=1,n
do j=1,n
do i=1,2
   a31(i,j,k) = b31(i,j,k)
enddo
enddo
enddo

do k=1,n
do j=1,2
do i=1,2
   a32(i,j,k) = b32(i,j,k)
enddo
enddo
enddo

do k=1,2
do j=1,2
do i=1,2
   a33(i,j,k) = b33(i,j,k)
enddo
enddo
enddo

end subroutine

program main
integer,parameter :: n=100
real(8),dimension(1:2) :: a1,b1
real(8),dimension(1:2,1:n) :: a21,b21
real(8),dimension(1:2,1:2) :: a22,b22
real(8),dimension(1:2,1:n,1:n) :: a31,b31
real(8),dimension(1:2,1:2,1:n) :: a32,b32
real(8),dimension(1:2,1:2,1:4) :: a33,b33

a1 = 0.
b1 = 1.

a21 = 0.
b21 = 1.

a22 = 0.
b22 = 1.

a31 = 0.
b31 = 1.

a32 = 0.
b32 = 1.

a33 = 0.
b33 = 1.

call sub(a1,b1,a21,b21,a22,b22,a31,b31,a32,b32,a33,b33,n)

print *, a1(1)
print *, a21(1,1)
print *, a22(1,1)
print *, a31(1,1,1)
print *, a32(1,1,1)
print *, a33(1,1,1)

end program

