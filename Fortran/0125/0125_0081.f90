subroutine sub(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,b1,b2,c1,c2,d,n)
real(8),dimension(1:n) :: a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18
real(8),dimension(1:n,1:n) :: b1,b2
real(8),dimension(1:n) :: c1,c2
integer(8),dimension(1:n) :: d

  do i=1,n
     a1(i) = a2(i) + a3(i) + a4(i) + a5(i) + a6(i) + a7(i) + a8(i) + a9(i) + a10(i) + a11(i) + a12(i) + a13(i) + a14(i) + a15(i) + a16(i)
     b1(1,i) = b2(1,i) + a17(i) + a18(i) 
     c1(d(i)) = c2(d(i)) 
  enddo
end subroutine sub

program main
integer,parameter :: n=100
integer,parameter :: ians=100
real(8),dimension(1:n) :: a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18
real(8),dimension(1:n,1:n) :: b1,b2
real(8),dimension(1:n) :: c1,c2
integer(8),dimension(1:n) :: d

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
a16 = 1.
a17 = 1.
a18 = 1.
b1 = 1.
b2 = 1.
c1 = 1.
c2 = 1.
d = (/(i,i=1,n)/)

call sub(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,b1,b2,c1,c2,d,n)

if (int(sum(a17)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a17)), ians
endif
end program
