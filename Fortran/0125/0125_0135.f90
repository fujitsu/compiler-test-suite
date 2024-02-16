subroutine sub(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,n)
real(8),dimension(1:n) :: a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16
do i=1,n,50
  a1(i) = a2(i) + a3(i) + a4(i) + a5(i) + a6(i) + a7(i) + a8(i) +           &
          a9(i) + a10(i) + a11(i) + a12(i) + a13(i) + a14(i) + a15(i) + a16(i)    
enddo
end subroutine

program main
integer,parameter :: n02=1000
integer,parameter :: ians02=300

real(8),dimension(1:n02) :: a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16

a1 = 0.
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

call sub(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,n02)

if (int(sum(a1)) .eq. ians02) then
  print *,"ok"
else
  print *,"ng:sub", " result =", int(sum(a1)),"master =", ians02
endif

end program
