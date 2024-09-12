subroutine sub1(a,b,n)
real(8),dimension(1:n) :: a,b

do i=1,n
   a(i) = b(i)
enddo
end subroutine

subroutine sub2(a1,a2,b1,b2,n)
real(8),dimension(1:n) :: a1,a2,b1,b2

do i=1,n
   a1(i) = b2(i)
   a2(i) = b1(i)
enddo
end subroutine

subroutine sub3(a1,a2,a3,a4,a5,b1,b2,b3,b4,b5,n)
real(8),dimension(1:n) :: a1,a2,a3,a4,a5,b1,b2,b3,b4,b5

do i=1,n
   a1(i) = b1(i)
   a2(i) = b2(i)
   a3(i) = b3(i)
   a4(i) = b4(i)
   a5(i) = b5(i)
enddo
end subroutine

subroutine sub4(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,n)
real(8),dimension(1:n) :: a1,a2,a3,a4,a5,a6,a7,a8,a9,a10
real(8),dimension(1:n) :: b1,b2,b3,b4,b5,b6,b7,b8,b9,b10

do i=1,n
   a1(i) = b1(i)
   a2(i) = b2(i)
   a3(i) = b3(i)
   a4(i) = b4(i)
   a5(i) = b5(i)
   a6(i) = b6(i)
   a7(i) = b7(i)
   a8(i) = b8(i)
   a9(i) = b9(i)
   a10(i) = b10(i)
enddo
end subroutine

program main
integer,parameter :: n=10
integer :: res
integer,parameter :: ians1=100
real(8),dimension(1:n) :: a,b
real(8),dimension(1:n) :: a1,a2,a3,a4,a5,a6,a7,a8,a9,a10
real(8),dimension(1:n) :: b1,b2,b3,b4,b5,b6,b7,b8,b9,b10

a = 0.
b = 0.
a1 = 1.
b1 = 1.
a2 = 1.
b2 = 1.
a3 = 1.
b3 = 1.
a4 = 1.
b4 = 1.
a5 = 1.
b5 = 1.
a6 = 1.
b6 = 1.
a7 = 1.
b7 = 1.
a8 = 1.
b8 = 1.
a9 = 1.
b9 = 1.
a10 = 1.
b10 = 1.

call sub1(a,b,n)
call sub2(a1,a2,b1,b2,n)
call sub3(a1,a2,a3,a4,a5,b1,b2,b3,b4,b5,n)
call sub4(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,n)

res = int(sum(a)) + int(sum(a1)) + int(sum(a2)) + int(sum(a3)) + int(sum(a4)) + int(sum(a5)) + int(sum(a6)) + int(sum(a7)) + int(sum(a8)) + int(sum(a9)) + int(sum(a10)) 
if (res .eq. ians1) then
  print *,"ok"
else
  print *,"ng", res, ians1
endif

end program
