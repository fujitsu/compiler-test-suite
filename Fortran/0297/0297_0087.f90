subroutine sub01(a,b,c,n)
real(4),dimension(1:n) :: a,b,c

do i=1,n
   a(i) = b(i) + c(i)
enddo
end subroutine sub01

subroutine sub02(a,b,c,n)
real(4),dimension(1:n) :: a,b,c

do i=1,n
   a(i) = b(i) + c(i)
enddo
end subroutine sub02

subroutine sub03(a,b,c,n)
real(4),dimension(1:n) :: a,b,c

do i=1,n
   a(i) = b(i) + c(i)
enddo
end subroutine sub03

subroutine sub04(a,b,c,n)
real(4),dimension(1:n,1:n) :: a,b,c

do j=1,n
do i=1,n
   a(i,j) = b(i,j) + c(i,j)
enddo
enddo
end subroutine sub04

subroutine sub05(a,b,c,n)
real(4),dimension(1:n,1:n) :: a,b,c

do j=1,n
do i=1,n
   a(i,j) = b(i,j) + c(i,j)
enddo
enddo
end subroutine sub05

program main
integer,parameter :: n=10
real(4),dimension(1:n) :: a,b,c
real(4),dimension(1:n,1:n) :: a2,b2,c2

a = 0.
b = 1.
c = 1.

a2 = 0.
b2 = 1.
c2 = 1.

call sub01(a,b,c,n)
call sub02(a,b,c,n)
call sub03(a,b,c,n)
call sub04(a2,b2,c2,n)
call sub05(a2,b2,c2,n)

print *,sum(a)
print *,sum(a2)

end program

