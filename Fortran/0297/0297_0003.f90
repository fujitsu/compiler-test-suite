subroutine calc_c8r(a4,r4,q4)
real(4) a4,r4,q4
a4 = real(cmplx(r4,0._4) - cmplx(q4,0._4))
end subroutine

subroutine calc_c8i(a4,r4,q4)
real(4) a4,r4,q4
a4 = imag(cmplx(r4,0._4) - cmplx(q4,0._4))
end subroutine

subroutine calc_c16r(a8,r8,q8)
real(8) a8,r8,q8
a8 = real(cmplx(r8,0._8) - cmplx(q8,0._8))
end subroutine

subroutine calc_c16i(a8,r8,q8)
real(8) a8,r8,q8
a8 = imag(cmplx(r8,0._8) - cmplx(q8,0._8))
end subroutine

subroutine calc_c32r(a16,r16,q16)
real(16) a16,r16,q16
a16 = real(cmplx(r16,0._16) - cmplx(q16,0._16))
end subroutine

subroutine calc_c32i(a16,r16,q16)
real(16) a16,r16,q16
a16 = imag(cmplx(r16,0._16) - cmplx(q16,0._16))
end subroutine

program main
real(4) a4,b4,r4,q4
real(4),parameter :: error4=0.0_4, ans4=-1.0_4
real(8) a8,b8,r8,q8
real(8),parameter :: error8=0.0_8, ans8=-1.0_8
real(16) a16,b16,r16,q16
real(16),parameter :: error16=0.0_16, ans16=-1.0_16

r4 = 1.0_4
q4 = 2.0_4
call calc_c8r(a4,r4,q4)
call calc_c8i(b4,r4,q4)

r8 = 1.0_8
q8 = 2.0_8
call calc_c16r(a8,r8,q8)
call calc_c16i(b8,r8,q8)

r16 = 1.0_16
q16 = 2.0_16
call calc_c32r(a16,r16,q16)
call calc_c32i(b16,r16,q16)

if (abs(a4+b4-ans4) .le. error4) then
  print *,"c8: ok"
else
  print *,"c8: ng ", a4+b4, "!=", ans4
endif
if (abs(a8+b8-ans8) .le. error8) then
  print *,"c16: ok"
else
  print *,"c16: ng ", a8+b8, "!=", ans8
endif
if (abs(a16+b16-ans16) .le. error16) then
  print *,"c32: ok"
else
  print *,"c32: ng ", a16+b16, "!=", ans16
endif
end program
