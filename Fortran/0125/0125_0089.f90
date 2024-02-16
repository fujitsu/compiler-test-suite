subroutine sub(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,n,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,c)
real(8),dimension(1:n,1:n) :: a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18
real(8),dimension(1:n) :: b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18
integer(8),dimension(1:n) :: c

do i=1,n
  a16(1,i) = a1(1,i) + a2(1,i) + a3(1,i) + a4(1,i) + a5(1,i) + a6(1,i) +a7(1,i) + a8(1,i) + a9(1,i) + a10(1,i) + a11(1,i) + a12(1,i) + a13(1,i) + a14(1,i) + a15(1,i) + a17(1,i) + a18(1,i)
  b16(c(i)) = b1(c(i)) + b2(c(i)) + b3(c(i)) + b4(c(i)) + b5(c(i)) + b6(c(i)) +b7(c(i)) + b8(c(i)) + b9(c(i)) + b10(c(i)) + b11(c(i)) + b12(c(i)) + b13(c(i)) + b14(c(i)) + b15(c(i)) + b17(c(i)) + b18(c(i))
enddo
end subroutine

program main
integer,parameter :: n=10
integer,parameter :: ians=340
real(8),dimension(1:n,1:n) :: a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18
real(8),dimension(1:n) :: b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18
integer(8),dimension(1:n) :: c
a1 = 1.
a2 = 1.
a3 = 1.
a4 = 1.
a5 = 1.
a6 = 1.
a7 = 1.
a8 = 1.
a9 = 1.
a10 = 1.
a11 = 1.
a12 = 1.
a13 = 1.
a14 = 1.
a15 = 1.
a16 = 0.
a17 = 1.
a18 = 1.
b1 = 1.
b2 = 1.
b3 = 1.
b4 = 1.
b5 = 1.
b6 = 1.
b7 = 1.
b8 = 1.
b9 = 1.
b10 = 1.
b11 = 1.
b12 = 1.
b13 = 1.
b14 = 1.
b15 = 1.
b16 = 0.
b17 = 1.
b18 = 1.
c = (/(i,i=1,n)/)

call sub(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,n,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,c)

if (int(sum(a16) + sum(b16)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a16)+sum(b16)), ians
endif
end program
