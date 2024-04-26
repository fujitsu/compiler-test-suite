subroutine sub(a01,a02,a03,a04,a05,a06,a07,a08,a09,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31,a32,a33,a34,a35,a36,a37,a38,a39,a40,x,z,n)
real(8),dimension(1:n) :: a01,a02,a03,a04,a05,a06,a07,a08,a09,a10
real(8),dimension(1:n) :: a11,a12,a13,a14,a15,a16,a17,a18,a19,a20
real(8),dimension(1:n) :: a21,a22,a23,a24,a25,a26,a27,a28,a29,a30
real(8),dimension(1:n) :: a31,a32,a33,a34,a35,a36,a37,a38,a39,a40
real(8),dimension(1:n) :: x,z
do i=1,n
   x(i) = x(i) + z(i)
enddo

do i=1,n
   x(i) = x(i) + exp(sqrt(a01(i))+sqrt(a02(i))+sqrt(a03(i))+sqrt(a04(i))+sqrt(a05(i))+sqrt(a06(i))+sqrt(a07(i))+sqrt(a08(i))+sqrt(a09(i))+sqrt(a10(i)))
   x(i) = x(i) + exp(sqrt(a11(i))+sqrt(a12(i))+sqrt(a13(i))+sqrt(a14(i))+sqrt(a15(i))+sqrt(a16(i))+sqrt(a17(i))+sqrt(a18(i))+sqrt(a19(i))+sqrt(a20(i)))
   x(i) = x(i) + exp(sqrt(a21(i))+sqrt(a22(i))+sqrt(a23(i))+sqrt(a24(i))+sqrt(a25(i))+sqrt(a26(i))+sqrt(a27(i))+sqrt(a28(i))+sqrt(a29(i))+sqrt(a30(i)))
   x(i) = x(i) + exp(sqrt(a31(i))+sqrt(a32(i))+sqrt(a33(i))+sqrt(a34(i))+sqrt(a35(i))+sqrt(a36(i))+sqrt(a37(i))+sqrt(a38(i))+sqrt(a39(i))+sqrt(a40(i)))
enddo

end subroutine

subroutine init_a(a01,a02,a03,a04,a05,a06,a07,a08,a09,a10,n)
real(8),dimension(1:n) :: a01,a02,a03,a04,a05,a06,a07,a08,a09,a10
a01=0.1_8
a02=0.1_8
a03=0.1_8
a04=0.1_8
a05=0.1_8
a06=0.1_8
a07=0.1_8
a08=0.1_8
a09=0.1_8
a10=0.1_8
end subroutine

program main
integer,parameter :: n=10
real(8),dimension(1:n) :: a01,a02,a03,a04,a05,a06,a07,a08,a09,a10
real(8),dimension(1:n) :: a11,a12,a13,a14,a15,a16,a17,a18,a19,a20
real(8),dimension(1:n) :: a21,a22,a23,a24,a25,a26,a27,a28,a29,a30
real(8),dimension(1:n) :: a31,a32,a33,a34,a35,a36,a37,a38,a39,a40
real(8),dimension(1:n) :: x,z
real(8),parameter :: ans =39.9999999999
real(8),parameter :: error=  0.00005
real(8) :: rk

call init_a(a01,a02,a03,a04,a05,a06,a07,a08,a09,a10,n)
call init_a(a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,n)
call init_a(a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,n)
call init_a(a31,a32,a33,a34,a35,a36,a37,a38,a39,a40,n)
x = 0._8
z = 1._8

call sub(a01,a02,a03,a04,a05,a06,a07,a08,a09,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31,a32,a33,a34,a35,a36,a37,a38,a39,a40,x,z,n)

rk = sum(a01+a02+a03+a04+a05+a06+a07+a08+a09+a10)+sum(a11+a12+a13+a14+a15+a16+a17+a18+a19+a20)+sum(a21+a22+a23+a24+a25+a26+a27+a28+a29+a30)+sum(a31+a32+a33+a34+a35+a36+a37+a38+a39+a40)

if (abs(rk - ans) .gt. error) then
  print *,"ng", rk, ans 
else
  print *,"ok"
endif
end program
