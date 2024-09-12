subroutine sub1(a,b,n)
real(8),dimension(1:n) :: a
real(8),dimension(1:n,1:n) :: b
integer :: z1,z2,z3,z4
z1 = 0
z2 = 0
z3 = 0
z4 = 0

do j=1,n
   do i=1,n
      a(i) = b(i,j) + 1
   enddo
enddo

do j=1,n
   do i=1,n
      a(i) = b(i,j) + 1
   enddo
enddo

end subroutine

subroutine sub2(a,b,n)
real(8),dimension(1:n) :: a
real(8),dimension(1:n,1:n) :: b
integer :: z1,z2,z3,z4
z1 = 0
z2 = 1
z3 = 1
z4 = 1

do j=1,n
   do i=1,n
      a(i) = b(i,j) + 1
   enddo
enddo

do j=1,n
   do i=1,n
      a(i) = b(i,j) + 1
   enddo
enddo

end subroutine

subroutine sub3(a,b,n)
real(8),dimension(1:n) :: a
real(8),dimension(1:n,1:n) :: b
integer :: z1,z2,z3,z4
z1 = 1
z2 = 0
z3 = 5
z4 = 5

do j=1,n
   do i=1,n
      a(i) = b(i,j) + 1
   enddo
enddo

do j=1,n
   do i=1,n
      a(i) = b(i,j) + 1
   enddo
enddo

end subroutine

subroutine sub4(a,b,n)
real(8),dimension(1:n) :: a
real(8),dimension(1:n,1:n) :: b
integer :: z1,z2,z3,z4
z1 = 1
z2 = 1
z3 = 12
z4 = 1

do j=1,n
   do i=1,n
      a(i) = b(i,j) + 1
   enddo
enddo

do j=1,n
   do i=1,n
      a(i) = b(i,j) + 1
   enddo
enddo

end subroutine

subroutine sub5(a,b,n)
real(8),dimension(1:n) :: a
real(8),dimension(1:n,1:n) :: b
integer :: z1,z2,z3,z4
z1 = 2
z2 = 0
z3 = 11
z4 = 1

do j=1,n
   do i=1,n
      a(i) = b(i,j) + 1
   enddo
enddo

do j=1,n
   do i=1,n
      a(i) = b(i,j) + 1
   enddo
enddo

end subroutine

subroutine sub6(a,b,n)
real(8),dimension(1:n) :: a
real(8),dimension(1:n,1:n) :: b
integer :: z1,z2,z3,z4
z1 = 2
z2 = 1
z3 = 1
z4 = 12

do j=1,n
   do i=1,n
      a(i) = b(i,j) + 1
   enddo
enddo

do j=1,n
   do i=1,n
      a(i) = b(i,j) + 1
   enddo
enddo

end subroutine

subroutine sub7(a,b,n)
real(8),dimension(1:n) :: a
real(8),dimension(1:n,1:n) :: b
integer :: z1,z2,z3,z4
z1 = 2
z2 = 2
z3 = 12
z4 = 12

do j=1,n
   do i=1,n
      a(i) = b(i,j) + 1
   enddo
enddo

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

call sub1(a,b,n)
call sub2(a,b,n)
call sub3(a,b,n)
call sub4(a,b,n)
call sub5(a,b,n)
call sub6(a,b,n)
call sub7(a,b,n)

if (int(sum(a)) .eq. ians1) then
  print *,"ok"
else
  print *,"ng(a)", int(sum(a)), ians1
endif

end program
