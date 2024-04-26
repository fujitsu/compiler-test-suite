program main
  integer*8 x1(10),x2(10),x3(10),x4(10),x5(10),x6(10),x7(10),x8(10),x9(10),x10(10)
  integer*8 x11(10),x12(10),x13(10),x14(10),x15(10),x16(10),x17(10),x18(10),x19(10),x20(10)
  integer*8 x21(10),x22(10),x23(10),x24(10),x25(10),x26(10),x27(10),x28(10),x29(10),x30(10)
  integer*8 x31(10),x32(10)
  data x1/10*1/
  data x2/10*1/
  data x3/10*1/
  data x4/10*1/
  data x5/10*1/
  data x6/10*1/
  data x7/10*1/
  data x8/10*1/
  data x9/10*1/
  data x10/10*1/
  data x11/10*1/
  data x12/10*1/
  data x13/10*1/
  data x14/10*1/
  data x15/10*1/
  data x16/10*1/
  data x17/10*1/
  data x18/10*1/
  data x19/10*1/
  data x20/10*1/
  data x21/10*1/
  data x22/10*1/
  data x23/10*1/
  data x24/10*1/
  data x25/10*1/
  data x26/10*1/
  data x27/10*1/
  data x28/10*1/
  data x29/10*1/
  data x30/10*1/
  data x31/10*1/
  data x32/10*1/
  call sub(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,10_8)
end program main

subroutine sub(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,n)
  integer*8 xxx(10),i,j,n
  integer*8 x1(10),x2(10),x3(10),x4(10),x5(10),x6(10),x7(10),x8(10),x9(10),x10(10)
  integer*8 x11(10),x12(10),x13(10),x14(10),x15(10),x16(10),x17(10),x18(10),x19(10),x20(10)
  integer*8 x21(10),x22(10),x23(10),x24(10),x25(10),x26(10),x27(10),x28(10),x29(10),x30(10)
  integer*8 x31(10),x32(10)

  do j=1,n
     do i=1,8
        xxx(i) = x1(i)+x2(i)+x3(i)+x4(i)+x5(i)+x6(i)+x7(i)+x8(i)+x9(i)+x10(i)+x11(i)+x12(i)+x13(i)+x14(i)+x15(i)+x16(i)+x17(i)+x18(i)+x19(i)+x20(i)+x21(i)+x22(i)+x23(i)+x24(i)+x25(i)+x26(i)+x27(i)+x28(i)+x29(i)+x30(i)+x31(i)+x32(i)
     end do
  end do
  if (xxx(1) .eq. 32) then
     print *,"OK"
  else
     print *,"NG",xxx(1)
  end if
end subroutine sub
