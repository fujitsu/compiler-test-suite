subroutine foo(a00,a01,a02,a03,a04,a05,a06,a07,a08,a09, &
	       a10,a11,a12,a13,a14,a15,a16,a17,a18,a19, &
	       a20,a21,a22,a23,a24,a25,a26,a27,a28,a29, &
	       a30,a31,a32,a33,a34,a35,a36,a37,a38,a39, &
	       n)
real(8),dimension(1:n) :: a00,a01,a02,a03,a04,a05,a06,a07,a08,a09
real(8),dimension(1:n) :: a10,a11,a12,a13,a14,a15,a16,a17,a18,a19
real(8),dimension(1:n) :: a20,a21,a22,a23,a24,a25,a26,a27,a28,a29
real(8),dimension(1:n) :: a30,a31,a32,a33,a34,a35,a36,a37,a38,a39
do i=1,n
  a00(i) = a01(i)+a02(i)+a03(i)+a04(i)+a05(i)+a06(i)+a07(i)+a08(i)+a09(i)
  a10(i) = a11(i)+a12(i)+a13(i)+a14(i)+a15(i)+a16(i)+a17(i)+a18(i)+a19(i)
  a20(i) = a21(i)+a22(i)+a23(i)+a24(i)+a25(i)+a26(i)+a27(i)+a28(i)+a29(i)
  a30(i) = a31(i)+a32(i)+a33(i)+a34(i)+a35(i)+a36(i)+a37(i)+a38(i)+a39(i)
enddo
end subroutine

subroutine init_a(a00,a01,a02,a03,a04,a05,a06,a07,a08,a09,n,r)
real(8),dimension(1:n) :: a00,a01,a02,a03,a04,a05,a06,a07,a08,a09
real(8) :: r
a00 = r
a01 = r
a02 = r
a03 = r
a04 = r
a05 = r
a06 = r
a07 = r
a08 = r
a09 = r
end subroutine

program main
integer,parameter :: n=10
real(8),dimension(1:n) :: a00,a01,a02,a03,a04,a05,a06,a07,a08,a09
real(8),dimension(1:n) :: a10,a11,a12,a13,a14,a15,a16,a17,a18,a19
real(8),dimension(1:n) :: a20,a21,a22,a23,a24,a25,a26,a27,a28,a29
real(8),dimension(1:n) :: a30,a31,a32,a33,a34,a35,a36,a37,a38,a39
integer,parameter :: ians=54
call init_a(a00,a01,a02,a03,a04,a05,a06,a07,a08,a09,n,0.0_8)
call init_a(a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,n,1.0_8)
call init_a(a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,n,2.0_8)
call init_a(a30,a31,a32,a33,a34,a35,a36,a37,a38,a39,n,3.0_8)
call foo(a00,a01,a02,a03,a04,a05,a06,a07,a08,a09, &
         a10,a11,a12,a13,a14,a15,a16,a17,a18,a19, &
         a20,a21,a22,a23,a24,a25,a26,a27,a28,a29, &
         a30,a31,a32,a33,a34,a35,a36,a37,a38,a39,n)
if (int(a00(n)+a10(n)+a20(n)+a30(n), kind=4) .eq. ians) then
   print *,"ok"
else
   print *, "ng: ", a00(n)+a10(n)+a20(n)+a30(n)
endif
end program
