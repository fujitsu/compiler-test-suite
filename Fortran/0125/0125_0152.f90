subroutine sub(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,n)
real(8),dimension(1:n) :: a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17
do i=1,n
  a1(i) = a1(i)+a2(i)+a3(i)+a4(i)+a5(i)+a6(i)+a7(i)+a8(i)+a9(i)+a10(i)+a11(i)+a12(i)+a13(i)+a14(i)+a15(i)+a16(i)+a17(i)
enddo
end subroutine
program main
integer,parameter :: n=1000
integer,parameter :: ians=26000
real(8),dimension(1:n) :: a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17
a1 = 1.
a2 = 2.
a3 = 1.
a4 = 2.
a5 = 1.
a6 = 2.
a7 = 1.
a8 = 2.
a9 = 1.
a10 = 2.
a11 = 2.
a12 = 1.
a13 = 2.
a14 = 1.
a15 = 2.
a16 = 1.
a17 = 2.

call sub(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,n)
if (int(sum(a1)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a1)), ians
endif
end program
