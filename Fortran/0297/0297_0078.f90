subroutine sub(a01,a02,a03,a04,a05,a06,a07,a08,a09,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,ki,is,ie)
real(8),dimension(1:100) :: a01,a02,a03,a04,a05,a06,a07,a08,a09,a10
real(8),dimension(1:100) :: a11,a12,a13,a14,a15,a16,a17,a18,a19,a20
integer,dimension(1:100) :: ki
real(8),dimension(1:100) :: d01,d02,d03,d04,d05,d06,d07,d08,d09,d10
real(8),dimension(1:100) :: d11,d12,d13,d14,d15,d16,d17,d18,d19,d20
do i=1,100
  d01(i) = exp(a01(ki(i)))
  d02(i) = exp(a02(ki(i)))
  d03(i) = exp(a03(ki(i)))
  d04(i) = exp(a04(ki(i)))
  d05(i) = exp(a05(ki(i)))
  d06(i) = exp(a06(ki(i)))
  d07(i) = exp(a07(ki(i)))
  d08(i) = exp(a08(ki(i)))
  d09(i) = exp(a09(ki(i)))
  d10(i) = exp(a10(ki(i)))
  d11(i) = exp(a11(ki(i)))
  d12(i) = exp(a12(ki(i)))
  d13(i) = exp(a13(ki(i)))
  d14(i) = exp(a14(ki(i)))
  d15(i) = exp(a15(ki(i)))
  d16(i) = exp(a16(ki(i)))
  d17(i) = exp(a17(ki(i)))
  d18(i) = exp(a18(ki(i)))
  d19(i) = exp(a19(ki(i)))
  d20(i) = exp(a20(ki(i)))
enddo
do i=is,ie
  a01(i) = sqrt(d01(ki(i)))
  a02(i) = sqrt(d02(ki(i)))
  a03(i) = sqrt(d03(ki(i)))
  a04(i) = sqrt(d04(ki(i)))
  a05(i) = sqrt(d05(ki(i)))
  a06(i) = sqrt(d06(ki(i)))
  a07(i) = sqrt(d07(ki(i)))
  a08(i) = sqrt(d08(ki(i)))
  a09(i) = sqrt(d09(ki(i)))
  a10(i) = sqrt(d10(ki(i)))
  a11(i) = sqrt(d11(ki(i)))
  a12(i) = sqrt(d12(ki(i)))
  a13(i) = sqrt(d13(ki(i)))
  a14(i) = sqrt(d14(ki(i)))
  a15(i) = sqrt(d15(ki(i)))
  a16(i) = sqrt(d16(ki(i)))
  a17(i) = sqrt(d17(ki(i)))
  a18(i) = sqrt(d18(ki(i)))
  a19(i) = sqrt(d19(ki(i)))
  a20(i) = sqrt(d20(ki(i)))
enddo
end subroutine

subroutine init_a(a01,a02,a03,a04,a05,a06,a07,a08,a09,a10)
real(8),dimension(1:100) :: a01,a02,a03,a04,a05,a06,a07,a08,a09,a10
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
real(8),dimension(1:100) :: a01,a02,a03,a04,a05,a06,a07,a08,a09,a10
real(8),dimension(1:100) :: a11,a12,a13,a14,a15,a16,a17,a18,a19,a20
integer,dimension(1:100) :: ki
real(8),parameter :: ans =2064.491348897007
real(8),parameter :: error=   0.0002
real(8) :: rk

call init_a(a01,a02,a03,a04,a05,a06,a07,a08,a09,a10)
call init_a(a11,a12,a13,a14,a15,a16,a17,a18,a19,a20)
ki = (/(i,i=1,100)/)

call sub(a01,a02,a03,a04,a05,a06,a07,a08,a09,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,ki,1+1,100-1)

rk = sum(a01+a02+a03+a04+a05+a06+a07+a08+a09+a10)+sum(a11+a12+a13+a14+a15+a16+a17+a18+a19+a20)

if (abs(rk - ans) .gt. error) then
  print *,"ng", rk, ans 
else
  print *,"ok"
endif
end program
