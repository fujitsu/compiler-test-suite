subroutine sub1(a,b,c,n)
integer(4),dimension(1:n) :: a,b,c

  do i=1,n
   a(i) = b(i) + c(i)
  enddo

end subroutine sub1

subroutine sub2(a,b,c,n)
integer(4),dimension(1:n,1:n) :: a,b,c

 do j=1,n
  do i=1,n
   a(i,j) = b(i,j) + c(i,j)
  enddo
 enddo
end subroutine sub2

subroutine sub3(a,b,c,n)
integer(4),dimension(1:n,1:n,1:n) :: a,b,c

do k=1,n
 do j=1,n
  do i=1,n
   a(i,j,k) = b(i,j,k) + c(i,j,k)
  enddo
 enddo
enddo
end subroutine sub3

program main
integer,parameter :: n=500
integer,parameter :: n2=20
integer,parameter :: n3=10
integer(4),dimension(1:n) :: a,b,c
integer(4),dimension(1:n2,1:n2) :: a2,b2,c2
integer(4),dimension(1:n3,1:n3,1:n3) :: a3,b3,c3

a = 0.
b = 1.
c = 1.

a2 = 0.
b2 = 1.
c2 = 1.

a3 = 0.
b3 = 1.
c3 = 1.

call sub1(a,b,c,n)
call sub2(a2,b2,c2,n2)
call sub3(a3,b3,c3,n3)

print *,sum(a)
print *,sum(a2)
print *,sum(a3)

end program
