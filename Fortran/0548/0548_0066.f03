call s0
call s1
call s2
call s3
print *,'pass'
end
subroutine s0
integer(1)::i1(0)
integer(2)::i2(0)
integer(4)::i4(0)
integer(8)::i8(0)
real(4)::r(0)
real(8)::d(0)
real(16)::q(0)
complex(4)::c(0)
complex(8)::cd(0)
complex(16)::cq(0)
i1=1;i2=1;i4=1;i8=1
r=0.9;d=0.9;q=0.9
c=(0.9,0.0);cd=(0.9,0.0);cq=(0.9,0.0)

call s01(dshiftl(i1,i1,i1))
call s01(dshiftr(i1,i1,i1))
call s01(merge_bits(i1,i1,i1))
call s01(shifta(i1,i1))
call s01(shiftl(i1,i1))
call s01(shiftr(i1,i1))
call s01(maskl(i1,1))
call s01(maskr(i1,1))
call s02(dshiftl(i2,i2,i2))
call s02(dshiftr(i2,i2,i2))
call s02(merge_bits(i2,i2,i2))
call s02(shifta(i2,i2))
call s02(shiftl(i2,i2))
call s02(shiftr(i2,i2))
call s02(maskl(i2,2))
call s02(maskr(i2,2))
call s03(dshiftl(i4,i4,i4))
call s03(dshiftr(i4,i4,i4))
call s03(merge_bits(i4,i4,i4))
call s03(shifta(i4,i4))
call s03(shiftl(i4,i4))
call s03(shiftr(i4,i4))
call s03(maskl(i4,4))
call s03(maskr(i4,4))
call s03(maskl(i1))
call s03(maskr(i1))
call s03(maskl(i2))
call s03(maskr(i2))
call s03(maskl(i4))
call s03(maskr(i4))
call s03(maskl(i8))
call s03(maskr(i8))
call s03(leadz(i1))
call s03(leadz(i2))
call s03(leadz(i4))
call s03(leadz(i8))
call s03(trailz(i1))
call s03(trailz(i2))
call s03(trailz(i4))
call s03(trailz(i8))
call s03(popcnt(i1))
call s03(popcnt(i2))
call s03(popcnt(i4))
call s03(popcnt(i8))
call s03(poppar(i1))
call s03(poppar(i2))
call s03(poppar(i4))
call s03(poppar(i8))
call s04(dshiftl(i8,i8,i8))
call s04(dshiftr(i8,i8,i8))
call s04(merge_bits(i8,i8,i8))
call s04(shifta(i8,i8))
call s04(shiftl(i8,i8))
call s04(shiftr(i8,i8))
call s04(maskl(i8,8))
call s04(maskr(i8,8))
call s05(acosh(r))
call s05(asinh(r))
call s05(atanh(r))
call s05(hypot(r,r))
call s06(acosh(d))
call s06(asinh(d))
call s06(atanh(d))
call s06(hypot(d,d))
call s07(acosh(q))
call s07(asinh(q))
call s07(atanh(q))
call s07(hypot(q,q))
call s08(atan(c))
call s08(sinh(c))
call s08(cosh(c))
call s08(tanh(c))
call s08(asin(c))
call s08(acos(c))
call s08(tan(c))
call s08(acosh(c))
call s08(asinh(c))
call s08(atanh(c))
call s09(atan(cd))
call s09(sinh(cd))
call s09(cosh(cd))
call s09(tanh(cd))
call s09(asin(cd))
call s09(acos(cd))
call s09(tan(cd))
call s09(acosh(cd))
call s09(asinh(cd))
call s09(atanh(cd))
call s10(atan(cq))
call s10(sinh(cq))
call s10(cosh(cq))
call s10(tanh(cq))
call s10(asin(cq))
call s10(acos(cq))
call s10(tan(cq))
call s10(acosh(cq))
call s10(asinh(cq))
call s10(atanh(cq))
contains
subroutine s01(x)
integer(1)::x(:)
end subroutine
subroutine s02(x)
integer(2)::x(:)
end subroutine
subroutine s03(x)
integer(4)::x(:)
end subroutine
subroutine s04(x)
integer(8)::x(:)
end subroutine
subroutine s05(x)
real(4)::x(:)
end subroutine
subroutine s06(x)
real(8)::x(:)
end subroutine
subroutine s07(x)
real(16)::x(:)
end subroutine
subroutine s08(x)
complex(4)::x(:)
end subroutine
subroutine s09(x)
complex(8)::x(:)
end subroutine
subroutine s10(x)
complex(16)::x(:)
end subroutine
end
subroutine s1
integer(1)::i1
integer(2)::i2
integer(4)::i4
integer(8)::i8
real(4)::r
real(8)::d
real(16)::q
complex(4)::c
complex(8)::cd
complex(16)::cq
i1=1;i2=1;i4=1;i8=1
r=0.9;d=0.9;q=0.9
c=(0.9,0.0);cd=(0.9,0.0);cq=(0.9,0.0)

call s11(dshiftl(i1,i1,i1))
call s11(dshiftr(i1,i1,i1))
call s11(merge_bits(i1,i1,i1))
call s11(shifta(i1,i1))
call s11(shiftl(i1,i1))
call s11(shiftr(i1,i1))
call s11(maskl(i1,1))
call s11(maskr(i1,1))
call s12(dshiftl(i2,i2,i2))
call s12(dshiftr(i2,i2,i2))
call s12(merge_bits(i2,i2,i2))
call s12(shifta(i2,i2))
call s12(shiftl(i2,i2))
call s12(shiftr(i2,i2))
call s12(maskl(i2,2))
call s12(maskr(i2,2))
call s13(dshiftl(i4,i4,i4))
call s13(dshiftr(i4,i4,i4))
call s13(merge_bits(i4,i4,i4))
call s13(shifta(i4,i4))
call s13(shiftl(i4,i4))
call s13(shiftr(i4,i4))
call s13(maskl(i4,4))
call s13(maskr(i4,4))
call s13(maskl(i1))
call s13(maskr(i1))
call s13(maskl(i2))
call s13(maskr(i2))
call s13(maskl(i4))
call s13(maskr(i4))
call s13(maskl(i8))
call s13(maskr(i8))
call s13(leadz(i1))
call s13(leadz(i2))
call s13(leadz(i4))
call s13(leadz(i8))
call s13(trailz(i1))
call s13(trailz(i2))
call s13(trailz(i4))
call s13(trailz(i8))
call s13(popcnt(i1))
call s13(popcnt(i2))
call s13(popcnt(i4))
call s13(popcnt(i8))
call s13(poppar(i1))
call s13(poppar(i2))
call s13(poppar(i4))
call s13(poppar(i8))
call s14(dshiftl(i8,i8,i8))
call s14(dshiftr(i8,i8,i8))
call s14(merge_bits(i8,i8,i8))
call s14(shifta(i8,i8))
call s14(shiftl(i8,i8))
call s14(shiftr(i8,i8))
call s14(maskl(i8,8))
call s14(maskr(i8,8))
call s15(acosh(r+r))
call s15(asinh(r))
call s15(atanh(r))
call s15(hypot(r,r))
call s16(acosh(d+d))
call s16(asinh(d))
call s16(atanh(d))
call s16(hypot(d,d))
call s17(acosh(q+q))
call s17(asinh(q))
call s17(atanh(q))
call s17(hypot(q,q))
call s18(atan(c))
call s18(sinh(c))
call s18(cosh(c))
call s18(tanh(c))
call s18(asin(c))
call s18(acos(c))
call s18(tan(c))
call s18(acosh(c))
call s18(asinh(c))
call s18(atanh(c))
call s19(atan(cd))
call s19(sinh(cd))
call s19(cosh(cd))
call s19(tanh(cd))
call s19(asin(cd))
call s19(acos(cd))
call s19(tan(cd))
call s19(acosh(cd))
call s19(asinh(cd))
call s19(atanh(cd))
call s20(atan(cq))
call s20(sinh(cq))
call s20(cosh(cq))
call s20(tanh(cq))
call s20(asin(cq))
call s20(acos(cq))
call s20(tan(cq))
call s20(acosh(cq))
call s20(asinh(cq))
call s20(atanh(cq))
contains
subroutine s11(x)
integer(1)::x
end subroutine
subroutine s12(x)
integer(2)::x
end subroutine
subroutine s13(x)
integer(4)::x
end subroutine
subroutine s14(x)
integer(8)::x
end subroutine
subroutine s15(x)
real(4)::x
end subroutine
subroutine s16(x)
real(8)::x
end subroutine
subroutine s17(x)
real(16)::x
end subroutine
subroutine s18(x)
complex(4)::x
end subroutine
subroutine s19(x)
complex(8)::x
end subroutine
subroutine s20(x)
complex(16)::x
end subroutine
end
subroutine s2
integer(1)::i1(1,2)
integer(2)::i2(1,2)
integer(4)::i4(1,2)
integer(8)::i8(1,2)
real(4)::r(1,2)
real(8)::d(1,2)
real(16)::q(1,2)
complex(4)::c(1,2)
complex(8)::cd(1,2)
complex(16)::cq(1,2)
i1=1;i2=1;i4=1;i8=1
r=0.9;d=0.9;q=0.9
c=(0.9,0.0);cd=(0.9,0.0);cq=(0.9,0.0)

call s21(dshiftl(i1,i1,i1))
call s21(dshiftr(i1,i1,i1))
call s21(merge_bits(i1,i1,i1))
call s21(shifta(i1,i1))
call s21(shiftl(i1,i1))
call s21(shiftr(i1,i1))
call s21(maskl(i1,1))
call s21(maskr(i1,1))
call s22(dshiftl(i2,i2,i2))
call s22(dshiftr(i2,i2,i2))
call s22(merge_bits(i2,i2,i2))
call s22(shifta(i2,i2))
call s22(shiftl(i2,i2))
call s22(shiftr(i2,i2))
call s22(maskl(i2,2))
call s22(maskr(i2,2))
call s23(dshiftl(i4,i4,i4))
call s23(dshiftr(i4,i4,i4))
call s23(merge_bits(i4,i4,i4))
call s23(shifta(i4,i4))
call s23(shiftl(i4,i4))
call s23(shiftr(i4,i4))
call s23(maskl(i4,4))
call s23(maskr(i4,4))
call s23(maskl(i1))
call s23(maskr(i1))
call s23(maskl(i2))
call s23(maskr(i2))
call s23(maskl(i4))
call s23(maskr(i4))
call s23(maskl(i8))
call s23(maskr(i8))
call s23(leadz(i1))
call s23(leadz(i2))
call s23(leadz(i4))
call s23(leadz(i8))
call s23(trailz(i1))
call s23(trailz(i2))
call s23(trailz(i4))
call s23(trailz(i8))
call s23(popcnt(i1))
call s23(popcnt(i2))
call s23(popcnt(i4))
call s23(popcnt(i8))
call s23(poppar(i1))
call s23(poppar(i2))
call s23(poppar(i4))
call s23(poppar(i8))
call s24(dshiftl(i8,i8,i8))
call s24(dshiftr(i8,i8,i8))
call s24(merge_bits(i8,i8,i8))
call s24(shifta(i8,i8))
call s24(shiftl(i8,i8))
call s24(shiftr(i8,i8))
call s24(maskl(i8,8))
call s24(maskr(i8,8))
call s25(acosh(r+r))
call s25(asinh(r))
call s25(atanh(r))
call s25(hypot(r,r))
call s26(acosh(d+d))
call s26(asinh(d))
call s26(atanh(d))
call s26(hypot(d,d))
call s27(acosh(q+q))
call s27(asinh(q))
call s27(atanh(q))
call s27(hypot(q,q))
call s28(atan(c))
call s28(sinh(c))
call s28(cosh(c))
call s28(tanh(c))
call s28(asin(c))
call s28(acos(c))
call s28(tan(c))
call s28(acosh(c))
call s28(asinh(c))
call s28(atanh(c))
call s29(atan(cd))
call s29(sinh(cd))
call s29(cosh(cd))
call s29(tanh(cd))
call s29(asin(cd))
call s29(acos(cd))
call s29(tan(cd))
call s29(acosh(cd))
call s29(asinh(cd))
call s29(atanh(cd))
call s30(atan(cq))
call s30(sinh(cq))
call s30(cosh(cq))
call s30(tanh(cq))
call s30(asin(cq))
call s30(acos(cq))
call s30(tan(cq))
call s30(acosh(cq))
call s30(asinh(cq))
call s30(atanh(cq))
contains
subroutine s21(x)
integer(1)::x(:,:)
end subroutine
subroutine s22(x)
integer(2)::x(:,:)
end subroutine
subroutine s23(x)
integer(4)::x(:,:)
end subroutine
subroutine s24(x)
integer(8)::x(:,:)
end subroutine
subroutine s25(x)
real(4)::x(:,:)
end subroutine
subroutine s26(x)
real(8)::x(:,:)
end subroutine
subroutine s27(x)
real(16)::x(:,:)
end subroutine
subroutine s28(x)
complex(4)::x(:,:)
end subroutine
subroutine s29(x)
complex(8)::x(:,:)
end subroutine
subroutine s30(x)
complex(16)::x(:,:)
end subroutine
end
subroutine s3
integer(1)::i1(1,1,2)
integer(2)::i2(1,1,2)
integer(4)::i4(1,1,2)
integer(8)::i8(1,1,2)
real(4)::r(1,1,2)
real(8)::d(1,1,2)
real(16)::q(1,1,2)
complex(4)::c(1,1,2)
complex(8)::cd(1,1,2)
complex(16)::cq(1,1,2)
i1=1;i2=1;i4=1;i8=1
r=0.9;d=0.9;q=0.9
c=(0.9,0.0);cd=(0.9,0.0);cq=(0.9,0.0)

call s31(dshiftl(i=i1,j=i1,shift=i1))
call s31(dshiftr(I=i1,J=i1,SHIFT=i1))
call s31(merge_bits(i=i1,j=i1,mask=i1))
call s31(shifta(i=i1,shift=i1))
call s31(shiftl(i=i1,shift=i1))
call s31(shiftr(i=i1,shift=i1))
call s31(maskl(i=i1,kind=1))
call s31(maskr(i=i1,kind=1))
call s31(maskl(i=i1,kind=1**1))
call s31(maskr(i=i1,kind=1**1))
call s32(dshiftl(i2,i2,i2))
call s32(dshiftr(i2,i2,i2))
call s32(merge_bits(I=i2,J=i2,MASK=i2))
call s32(shifta(i2,i2))
call s32(shiftl(i2,i2))
call s32(shiftr(i2,i2))
call s32(maskl(i2,2))
call s32(maskr(i2,2))
call s33(dshiftl(i4,i4,i4))
call s33(dshiftr(i4,i4,i4))
call s33(merge_bits(i4,i4,i4))
call s33(shifta(i4,i4))
call s33(shiftl(i4,i4))
call s33(shiftr(i4,i4))
call s33(maskl(i4,4))
call s33(maskr(i4,4))
call s33(maskl(i1))
call s33(maskr(i1))
call s33(maskl(i2))
call s33(maskr(i2))
call s33(maskl(i4))
call s33(maskr(i4))
call s33(maskl(i8))
call s33(maskr(i8))
call s33(leadz(i=i1))
call s33(leadz(I=i2))
call s33(leadz(i4))
call s33(leadz(i8))
call s33(trailz(i=i1))
call s33(trailz(I=i2))
call s33(trailz(i4))
call s33(trailz(i8))
call s33(popcnt(i=i1))
call s33(popcnt(I=i2))
call s33(popcnt(i4))
call s33(popcnt(i8))
call s33(poppar(i=i1))
call s33(poppar(I=i2))
call s33(poppar(i4))
call s33(poppar(i8))
call s34(dshiftl(i8,i8,i8))
call s34(dshiftr(i8,i8,i8))
call s34(merge_bits(i8,i8,i8))
call s34(shifta(i8,i8))
call s34(shiftl(i8,i8))
call s34(shiftr(i8,i8))
call s34(maskl(i8,8))
call s34(maskr(i8,8))
call s35(acosh(r+r))
call s35(asinh(r))
call s35(atanh(r))
call s35(hypot(r,r))
call s36(acosh(d+d))
call s36(asinh(d))
call s36(atanh(d))
call s36(hypot(d,d))
call s37(acosh(q+q))
call s37(asinh(q))
call s37(atanh(q))
call s37(hypot(q,q))
call s38(atan(c))
call s38(sinh(c))
call s38(cosh(c))
call s38(tanh(c))
call s38(asin(c))
call s38(acos(c))
call s38(tan(c))
call s38(acosh(c))
call s38(asinh(c))
call s38(atanh(c))
call s39(atan(cd))
call s39(sinh(cd))
call s39(cosh(cd))
call s39(tanh(cd))
call s39(asin(cd))
call s39(acos(cd))
call s39(tan(cd))
call s39(acosh(cd))
call s39(asinh(cd))
call s39(atanh(cd))
call s40(atan(cq))
call s40(sinh(cq))
call s40(cosh(cq))
call s40(tanh(cq))
call s40(asin(cq))
call s40(acos(cq))
call s40(tan(cq))
call s40(acosh(cq))
call s40(asinh(cq))
call s40(atanh(cq))
contains
subroutine s31(x)
integer(1)::x(:,:,:)
end subroutine
subroutine s32(x)
integer(2)::x(:,:,:)
end subroutine
subroutine s33(x)
integer(4)::x(:,:,:)
end subroutine
subroutine s34(x)
integer(8)::x(:,:,:)
end subroutine
subroutine s35(x)
real(4)::x(:,:,:)
end subroutine
subroutine s36(x)
real(8)::x(:,:,:)
end subroutine
subroutine s37(x)
real(16)::x(:,:,:)
end subroutine
subroutine s38(x)
complex(4)::x(:,:,:)
end subroutine
subroutine s39(x)
complex(8)::x(:,:,:)
end subroutine
subroutine s40(x)
complex(16)::x(:,:,:)
end subroutine
end
