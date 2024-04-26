subroutine calc_c8(a8,b8,r4,q4)
complex(4) a8,b8
real(4) r4,q4
a8 = b8 + (cmplx(r4,0._4) + cmplx(q4,0._4))
end subroutine

subroutine calc_c16(a16,b16,r8,q8)
complex(8) a16,b16
real(8) r8,q8
a16 = b16 + (cmplx(r8,0._8) + cmplx(q8,0._8))
end subroutine

subroutine calc_c32(a32,b32,r16,q16)
complex(16) a32,b32
real(16) r16,q16
a32 = b32 + (cmplx(r16,0._16) + cmplx(q16,0._16))
end subroutine

program main
complex(4) a8,b8
real(4) r4,q4
real(4),parameter :: error4=0.0_4
complex(8) a16,b16
real(8) r8,q8
real(8),parameter :: error8=0.0_8
complex(16) a32,b32
real(16) r16,q16
real(16),parameter :: error16=0.0_16

r4 = 1.0_4
q4 = 2.0_4
a8 = cmplx(r4,q4)
b8 = cmplx(0._4,0._4)
call calc_c8(a8,b8,r4,q4)

r8 = 1.0_8
q8 = 2.0_8
a16 = cmplx(r8,q8)
b16 = cmplx(0._8,0._8)
call calc_c16(a16,b16,r8,q8)

r16 = 1.0_16
q16 = 2.0_16
a32 = cmplx(r16,q16)
b32 = cmplx(0._16,0._16)
call calc_c32(a32,b32,r16,q16)

if (abs(real(a8) - (r4 + q4)) .le. error4) then
  print *,"c8: ok"
else
  print *,"c8: ng ", real(a8), "!=", (r4 + q4)
endif
if (abs(real(a16) - (r8 + q8)) .le. error8) then
  print *,"c16: ok"
else
  print *,"c16: ng ", real(a16), "!=", (r8 + q8)
endif
if (abs(real(a32) - (r16 + q16)) .le. error16) then
  print *,"c32: ok"
else
  print *,"c32: ng ", real(a32), "!=", (r16 + q16)
endif
end program
