subroutine add_c8_r4(a8,r4,c8)
  complex*8 :: a8,c8
  real*4 :: r4
  a8 = r4 + c8
end subroutine add_c8_r4

subroutine add_c16_r8(a16,r8,c16)
  complex*16 :: a16,c16
  real*8 :: r8
  a16 = r8 + c16
end subroutine add_c16_r8

subroutine add_c16_r4(a16,r4,c16)
  complex*16 :: a16,c16
  real*4 :: r4
  a16 = r4 + c16
end subroutine add_c16_r4

subroutine add_c8_r8(a8,r8,c8)
  complex*8 :: a8,c8
  real*8 :: r8
  a8 = r8 + c8
end subroutine add_c8_r8

subroutine add5(a16,r4,c8)
  complex*16 :: a16
  complex*8 :: c8
  real*4 :: r4
  a16 = r4 + c8
end subroutine add5

subroutine add6(a8,r8,c16)
  complex*16 :: c16
  complex*8 :: a8
  real*8 :: r8
  a8 = r8 + c16
end subroutine add6

subroutine add_c16_r4cnt(a16,c16)
  complex*16 :: a16,c16
  a16 = 4.0_4 + c16
end subroutine add_c16_r4cnt

subroutine add_c16_r8cnt(a16,c16)
  complex*16 :: a16,c16
  a16 = 4.0_8 + c16
end subroutine add_c16_r8cnt

subroutine add_c8_r8cnt(a8,c8)
  complex*8 :: a8,c8
  a8 = 4.0_8 + c8
end subroutine add_c8_r8cnt

subroutine add_real_cnt2(a8,c8)
  complex*8 :: a8,c8
  a8 = 4.0_4 + c8
end subroutine add_real_cnt2

subroutine add_r8_c8cnt(a16,r8)
  complex*16 :: a16
  real*8 :: r8
  a16 = r8 + (1.0_4,4.0_4)
end subroutine add_r8_c8cnt

subroutine add_r8_c8cnt2(a8,r8)
  complex*8 :: a8
  real*8 :: r8
  a8 = r8 + (1.0_4, 4.0_4)
end subroutine add_r8_c8cnt2

subroutine add_sin_c8cnt2(a16,r8)
  complex*16 :: a16
  real*8:: r8
  a16 = sin(r8) + (1.0_4, 4.0_4)
end subroutine add_sin_c8cnt2

subroutine add_r4_c8cnt2(a8,r4)
  complex*8 :: a8
  real*4 :: r4
  a8 = r4 + (1.0_4, 4.0_4)
end subroutine add_r4_c8cnt2

subroutine add_r8_c16cnt(a16,r8)
  complex*16 :: a16
  real*8 :: r8
  a16 = r8 + (1.0_8, 4.0_8)
end subroutine add_r8_c16cnt

subroutine add_r4_c16cnt(a16,r4)
  complex*16 :: a16
  real*4 :: r4
  a16 = r4 + (1.0_8, 4.0_8)
end subroutine add_r4_c16cnt

subroutine add_sin_c8cnt(a8,r4)
  complex*8 :: a8
  real*4:: r4
  a8 = sin(r4) + (1.0_4, 4.0_4)
end subroutine add_sin_c8cnt

subroutine add_sin_c8cnt3(a16,r4)
  complex*16 :: a16
  real*4:: r4
  a16 = sin(r4) + (1.0_4, 4.0_4)
end subroutine add_sin_c8cnt3

subroutine add_sin_c16cnt(a16,r4)
  complex*16 :: a16
  real*4:: r4
  a16 = sin(r4) + (1.0_8, 4.0_8)
end subroutine add_sin_c16cnt

subroutine libfunc_add_complex_cnt22(a16,r4)
  complex*16 :: a16
  real*4:: r4
  a16 = sin(sin(r4)) + (1.0_8, 4.0_8) 
end subroutine libfunc_add_complex_cnt22

subroutine libfunc_add_complex_cnt2_1(a16,r4)
  complex*16 :: a16
  real*4:: r4
  a16 = sin(r4) + cmplx(1.0_8, 4.0_8)
end subroutine libfunc_add_complex_cnt2_1

subroutine libfunc_add_complex_cnt2(a16,r4)
  complex*16 :: a16
  real*4:: r4
  a16 = sin(r4) + dcmplx(1.0_8, 4.0_8)
end subroutine libfunc_add_complex_cnt2

subroutine add_r4_cmplx(a16,r4)
  complex*16 :: a16
  real*4:: r4
  a16 = r4 + cmplx(1.0_8, 4.0_8) 
end subroutine add_r4_cmplx

subroutine add_r4_cmplx2(a16,r4)
  complex*16 :: a16
  real*4:: r4
  a16 = r4 + dcmplx(1.0_8, 4.0_8) 
end subroutine add_r4_cmplx2

subroutine add_r4_cmplx3(a16)
  complex*16 :: a16
  real*4:: r4
  r4=30
  a16 = r4 + cmplx(1.0_4, 4.0_4)
end subroutine add_r4_cmplx3

subroutine add_r4_cmplx4(a16)
  complex*16 :: a16
  real*4:: r4
  r4=30
  a16 = r4 + dcmplx(1.0_4, 4.0_4)
end subroutine add_r4_cmplx4

subroutine add_r4_cmplx5(a16,r4)
  complex*16 :: a16
  real*4:: r4
  a16 = r4 + cmplx(1.0_4, 4.0_4) + cmplx(1.0_8, 4.0_8)
end subroutine add_r4_cmplx5

subroutine add_r4_cmplx6(a16,r4)
  complex*16 :: a16
  real*4:: r4
  r4=30
  a16 = r4 + cmplx(sin(r4), 4.0_4)
end subroutine add_r4_cmplx6

subroutine add_r4_cmplx7(a16,r4)
  complex*16 :: a16
  real*4:: r4
  r4=30
  a16 = r4 + dcmplx(sin(r4), 4.0_4)
end subroutine add_r4_cmplx7

subroutine add_cnt_cnt(a16)
  complex*16 :: a16
  a16 = 4.0 + (1.0_4, 4.0_4)
end subroutine add_cnt_cnt

program main
  implicit none
  integer,parameter::xp = 4 
  integer,parameter::xp2 = 8 
  complex(xp)::a8,c8
  complex(xp2)::a16,c16
  real(xp)::r4,dist
  real(xp2)::r8
  c8=(1.0,2.0)
  c16=(2.0,3.0)
  r4=2.0
  r8=3.0

  call add_c8_r4(a8,r4,c8)
  if(a8==(3.0,2.0))then
     print *,'add_c8_r4 : OK'
  else
     print *,'add_c8_r4 : NG a8=',a8
  endif

  call add_c16_r8(a16,r8,c16)
  if(a16==(5.0,3.0))then
     print *,'add_c16_r8 : OK'
  else
     print *,'add_c16_r8 : NG a16=',a16
  endif

  call add_c16_r4(a16,r4,c16)
  if(a16==(4.0,3.0))then
     print *,'add_c16_r4 : OK'
  else
     print *,'add_c16_r4 : NG a16=',a16
  endif

  call add_c8_r8(a8,r8,c8)
  if(a8==(4.0,2.0))then
     print *,'add_c8_r8 : OK'
  else
     print *,'add_c8_r8 : NG a8=',a8
  endif

  call add5(a16,r4,c8)
  if(a16==(3.0,2.0))then
     print *,'add5 : OK'
  else
     print *,'add5 : NG a16=',a16
  endif

  call add6(a8,r8,c16)
  if(a8==(5.0,3.0))then
     print *,'add6 : OK'
  else
     print *,'add6 : NG a8=',a8
  endif

  call add_c16_r4cnt(a16,c16)
  if(a16==(6.0,3.0))then
     print *,'add_c16_r4cnt : OK'
  else
     print *,'add_c16_r4cnt : NG a16=',a16
  endif

  call add_c16_r8cnt(a16,c16)
  if(a16==(6.0,3.0))then
     print *,'add_c16_r8cnt : OK'
  else
     print *,'add_c16_r8cnt : NG a16=',a16
  endif

  call add_c8_r8cnt(a8,c8)
  if(a8==(5.0,2.0))then
     print *,'add_c8_r8cnt : OK'
  else
     print *,'add_c8_r8cnt : NG a8=',a8
  endif

  call add_real_cnt2(a8,c8)
  if(a8==(5.0,2.0))then
     print *,'add_real_cnt2 : OK'
  else
     print *,'add_real_cnt2 : NG a8=',a8
  endif

  call add_r8_c8cnt(a16,r8)
  if(a16==(4.0,4.0))then
     print *,'add_r8_c8cnt : OK'
  else
     print *,'add_r8_c8cnt : NG a16=',a16
  endif

  call add_r8_c8cnt2(a8,r8)
  if(a8==(4.0,4.0))then
     print *,'add_r8_c8cnt2 : OK'
  else
     print *,'add_r8_c8cnt2 : NG a8=',a8
  endif

  call add_sin_c8cnt2(a16,r8)
  dist = abs(real(a16-(1.141,4)))
  if(dist < 0.01 .and.  aimag(a16)==4.0) then
     print *,'add_sin_c8cnt2 : OK'
  else
     print *,'add_sin_c8cnt2 : NG a16=',a16
  endif

  call add_r4_c8cnt2(a8,r4)
  if(a8==(3.0,4.0))then
     print *,'add_r4_c8cnt2 : OK'
  else
     print *,'add_r4_c8cnt2 : NG a8=',a8
  endif

  call add_r8_c16cnt(a16,r8)
  if(a16==(4.0,4.0))then
     print *,'add_r8_c16cnt : OK'
  else
     print *,'add_r8_c16cnt : NG a16=',a16
  endif

  call add_r4_c16cnt(a16,r4)
  if(a16==(3.0,4.0))then
     print *,'add_r4_c16cnt : OK'
  else
     print *,'add_r4_c16cnt : NG a16=',a16
  endif

  call add_sin_c8cnt(a8,r4)
  dist = abs(real(a8)-1.909)
  if(dist < 0.01 .and. aimag(a8)==4.0) then
     print *,'add_sin_c8cnt : OK'
  else
     print *,'add_sin_c8cnt : NG a8=',a8
  endif

  call add_sin_c8cnt3(a16,r4)
  dist = abs(real(a16)-1.909)
  if(dist < 0.01 .and. aimag(a16)==4.0) then
     print *,'add_sin_c8cnt3 : OK'
  else
     print *,'add_sin_c8cnt3 : NG a16=',a16
  endif

  call add_sin_c16cnt(a16,r4)
  dist = abs(real(a16)-1.909)
  if(dist < 0.01 .and. aimag(a16)==4.0) then
     print *,'add_sin_c16cnt : OK'
  else
     print *,'add_sin_c16cnt : NG a16=',a16
  endif

  call libfunc_add_complex_cnt22(a16,r4)
  dist = abs(real(a16)-1.789)
  if(dist < 0.01 .and. aimag(a16)==4.0) then
     print *,'libfunc_add_complex_cnt22 : OK'
  else
     print *,'libfunc_add_complex_cnt22 : NG a16=',a16
  endif

  call libfunc_add_complex_cnt2_1(a16,r4)
  dist = abs(real(a16)-1.909)
  if(dist < 0.01 .and. aimag(a16)==4.0) then
     print *,'libfunc_add_complex_cnt2_1 : OK'
  else
     print *,'libfunc_add_complex_cnt2_1 : NG a16=',a16
  endif

  call libfunc_add_complex_cnt2(a16,r4)
  dist = abs(real(a16)-1.909)
  if(dist < 0.01 .and. aimag(a16)==4.0) then
     print *,'libfunc_add_complex_cnt2 : OK'
  else
     print *,'libfunc_add_complex_cnt2 : NG a16=',a16
  endif

  call add_r4_cmplx(a16,r4)
  if(a16==(3.0,4.0))then
     print *,'add_r4_cmplx : OK'
  else
     print *,'add_r4_cmplx : NG a16=',a16
  endif

  call add_r4_cmplx2(a16,r4)
  if(a16==(3.0,4.0))then
     print *,'add_r4_cmplx2 : OK'
  else
     print *,'add_r4_cmplx2 : NG a16=',a16
  endif

  call add_r4_cmplx3(a16)
  if(a16==(31.0,4.0))then
     print *,'add_r4_cmplx3 : OK'
  else
     print *,'add_r4_cmplx3 : NG a16=',a16
  endif

  call add_r4_cmplx4(a16)
  if(a16==(31.0,4.0))then
     print *,'add_r4_cmplx4 : OK'
  else
     print *,'add_r4_cmplx4 : NG a16=',a16
  endif

  call add_r4_cmplx5(a16,r4)
  if(a16==(4.0,8.0))then
     print *,'add_r4_cmplx5 : OK'
  else
     print *,'add_r4_cmplx5 : NG a16=',a16
  endif

  call add_r4_cmplx6(a16,r4)
  dist = abs(real(a16)-29.01)
  if(dist < 0.01 .and. aimag(a16)==4.0) then
     print *,'add_r4_cmplx6 : OK'
  else
     print *,'add_r4_cmplx6 : NG a16=',a16
  endif

  call add_r4_cmplx7(a16,r4)
  dist = abs(real(a16)-29.01)
  if(dist < 0.01 .and. aimag(a16)==4.0) then
     print *,'add_r4_cmplx7 : OK'
  else
     print *,'add_r4_cmplx7 : NG a16=',a16
  endif

  call add_cnt_cnt(a16)
  if(a16==(5.0,4.0))then
     print *,'add_cnt_cnt : OK'
  else
     print *,'add_cnt_cnt : NG a16=',a16
  endif

end program main
