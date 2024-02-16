subroutine sub(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,n,k,c)
real(8),dimension(1:n) :: a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16
integer,dimension(1:n) :: c
do i=1,n,k
  a1(c(i)) = a2(c(i)) + a3(c(i)) + a4(c(i)) + a5(c(i)) + a6(c(i)) + a7(c(i)) +     &
             a8(c(i)) + a9(c(i)) + a10(c(i)) + a11(c(i)) + a12(c(i)) + a13(c(i)) + &
             a14(c(i)) + a15(c(i)) + a16(c(i))    
enddo
end subroutine

program main
integer,parameter :: n02=1000
integer,parameter :: ians02=7500

real(8),dimension(1:n02) :: a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16
integer,dimension(1:n02) :: c

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

c = (/(i,i=1,n02)/)
call sub(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,n02,2,c)

if (int(sum(a1)) .eq. ians02) then
  print *,"ok"
else
  print *,"ng:sub", " result =", int(sum(a1)),"master =", ians02
endif

end program
