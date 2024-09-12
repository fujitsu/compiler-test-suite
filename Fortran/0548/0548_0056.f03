call s1
call s2
call s3
call s4
call s5
call s6
call s7
call s8
call s9
print *,'pass'
end
subroutine s1
integer(1),parameter::piand1=iand(1_1,b'11')
integer(1),parameter::piand11=iand(b'1',3_1)
integer(2),parameter::piand2=iand(1_2,b'11')
integer(2),parameter::piand22=iand(b'1',3_2)
integer(4),parameter::piand3=iand(1_4,b'11')
integer(4),parameter::piand33=iand(b'1',3_4)
integer(8),parameter::piand4=iand(1_8,b'11')
integer(8),parameter::piand44=iand(b'1',3_8)
integer(1),parameter::pieor1=ieor(1_1,b'11')
integer(1),parameter::pieor11=ieor(b'1',3_1)
integer(2),parameter::pieor2=ieor(1_2,b'11')
integer(2),parameter::pieor22=ieor(b'1',3_2)
integer(4),parameter::pieor3=ieor(1_4,b'11')
integer(4),parameter::pieor33=ieor(b'1',3_4)
integer(8),parameter::pieor4=ieor(1_8,b'11')
integer(8),parameter::pieor44=ieor(b'1',3_8)
integer(1),parameter::pior1=ior(1_1,b'11')
integer(1),parameter::pior11=ior(b'1',3_1)
integer(2),parameter::pior2=ior(1_2,b'11')
integer(2),parameter::pior22=ior(b'1',3_2)
integer(4),parameter::pior3=ior(1_4,b'11')
integer(4),parameter::pior33=ior(b'1',3_4)
integer(8),parameter::pior4=ior(1_8,b'11')
integer(8),parameter::pior44=ior(b'1',3_8)

call s11(iand(1_1,b'11'),iand(b'1',3_1))
call s12(iand(1_2,b'11'),iand(b'1',3_2))
call s13(iand(1_4,b'11'),iand(b'1',3_4))
call s14(iand(1_8,b'11'),iand(b'1',3_8))
call s11(piand1,piand11)
call s12(piand2,piand22)
call s13(piand3,piand33)
call s14(piand4,piand44)
call s11(ieor(1_1,b'11'),ieor(b'1',3_1))
call s12(ieor(1_2,b'11'),ieor(b'1',3_2))
call s13(ieor(1_4,b'11'),ieor(b'1',3_4))
call s14(ieor(1_8,b'11'),ieor(b'1',3_8))
call s11(pieor1,pieor11)
call s12(pieor2,pieor22)
call s13(pieor3,pieor33)
call s14(pieor4,pieor44)
call s11(ior(1_1,b'11'),ior(b'1',3_1))
call s12(ior(1_2,b'11'),ior(b'1',3_2))
call s13(ior(1_4,b'11'),ior(b'1',3_4))
call s14(ior(1_8,b'11'),ior(b'1',3_8))
call s11(pior1,pior11)
call s12(pior2,pior22)
call s13(pior3,pior33)
call s14(pior4,pior44)
contains
subroutine s11(a,b)
integer(1)::a,b
if(a/=b) print *,'err'
end subroutine
subroutine s12(a,b)
integer(2)::a,b
if(a/=b) print *,'err'
end subroutine
subroutine s13(a,b)
integer(4)::a,b
if(a/=b) print *,'err'
end subroutine
subroutine s14(a,b)
integer(8)::a,b
if(a/=b) print *,'err'
end subroutine
end
subroutine s2
integer(1),parameter::piand1(1)=iand([1_1],b'11')
integer(1),parameter::piand11(1)=iand(b'1',[3_1])
integer(2),parameter::piand2(1)=iand([1_2],b'11')
integer(2),parameter::piand22(1)=iand(b'1',[3_2])
integer(4),parameter::piand3(1)=iand([1_4],b'11')
integer(4),parameter::piand33(1)=iand(b'1',[3_4])
integer(8),parameter::piand4(1)=iand([1_8],b'11')
integer(8),parameter::piand44(1)=iand(b'1',[3_8])
integer(1),parameter::pieor1(1)=ieor([1_1],b'11')
integer(1),parameter::pieor11(1)=ieor(b'1',[3_1])
integer(2),parameter::pieor2(1)=ieor([1_2],b'11')
integer(2),parameter::pieor22(1)=ieor(b'1',[3_2])
integer(4),parameter::pieor3(1)=ieor([1_4],b'11')
integer(4),parameter::pieor33(1)=ieor(b'1',[3_4])
integer(8),parameter::pieor4(1)=ieor([1_8],b'11')
integer(8),parameter::pieor44(1)=ieor(b'1',[3_8])
integer(1),parameter::pior1(1)=ior([1_1],b'11')
integer(1),parameter::pior11(1)=ior(b'1',[3_1])
integer(2),parameter::pior2(1)=ior([1_2],b'11')
integer(2),parameter::pior22(1)=ior(b'1',[3_2])
integer(4),parameter::pior3(1)=ior([1_4],b'11')
integer(4),parameter::pior33(1)=ior(b'1',[3_4])
integer(8),parameter::pior4(1)=ior([1_8],b'11')
integer(8),parameter::pior44(1)=ior(b'1',[3_8])

call s21(iand([1_1],b'11'),iand(b'1',[3_1]))
call s22(iand([1_2],b'11'),iand(b'1',[3_2]))
call s23(iand([1_4],b'11'),iand(b'1',[3_4]))
call s24(iand([1_8],b'11'),iand(b'1',[3_8]))
call s21(piand1,piand11)
call s22(piand2,piand22)
call s23(piand3,piand33)
call s24(piand4,piand44)
call s21(ieor([1_1],b'11'),ieor(b'1',[3_1]))
call s22(ieor([1_2],b'11'),ieor(b'1',[3_2]))
call s23(ieor([1_4],b'11'),ieor(b'1',[3_4]))
call s24(ieor([1_8],b'11'),ieor(b'1',[3_8]))
call s21(pieor1,pieor11)
call s22(pieor2,pieor22)
call s23(pieor3,pieor33)
call s24(pieor4,pieor44)
call s21(ior([1_1],b'11'),ior(b'1',[3_1]))
call s22(ior([1_2],b'11'),ior(b'1',[3_2]))
call s23(ior([1_4],b'11'),ior(b'1',[3_4]))
call s24(ior([1_8],b'11'),ior(b'1',[3_8]))
call s21(pior1,pior11)
call s22(pior2,pior22)
call s23(pior3,pior33)
call s24(pior4,pior44)

contains
subroutine s21(a,b)
integer(1)::a(:),b(:)
if(any(a/=b)) print *,'err'
end subroutine
subroutine s22(a,b)
integer(2)::a(:),b(:)
if(any(a/=b)) print *,'err'
end subroutine
subroutine s23(a,b)
integer(4)::a(:),b(:)
if(any(a/=b)) print *,'err'
end subroutine
subroutine s24(a,b)
integer(8)::a(:),b(:)
if(any(a/=b)) print *,'err'
end subroutine
end

subroutine s3
integer(1),parameter::piand1(0)=iand([integer(1)::],b'11')
integer(1),parameter::piand11(0)=iand(b'1',[integer(1)::])
integer(2),parameter::piand2(0)=iand([integer(2)::],b'11')
integer(2),parameter::piand22(0)=iand(b'1',[integer(2)::])
integer(4),parameter::piand3(0)=iand([integer(4)::],b'11')
integer(4),parameter::piand33(0)=iand(b'1',[integer(4)::])
integer(8),parameter::piand4(0)=iand([integer(8)::],b'11')
integer(8),parameter::piand44(0)=iand(b'1',[integer(8)::])
integer(1),parameter::pieor1(0)=ieor([integer(1)::],b'11')
integer(1),parameter::pieor11(0)=ieor(b'1',[integer(1)::])
integer(2),parameter::pieor2(0)=ieor([integer(2)::],b'11')
integer(2),parameter::pieor22(0)=ieor(b'1',[integer(2)::])
integer(4),parameter::pieor3(0)=ieor([integer(4)::],b'11')
integer(4),parameter::pieor33(0)=ieor(b'1',[integer(4)::])
integer(8),parameter::pieor4(0)=ieor([integer(8)::],b'11')
integer(8),parameter::pieor44(0)=ieor(b'1',[integer(8)::])
integer(1),parameter::pior1(0)=ior([integer(1)::],b'11')
integer(1),parameter::pior11(0)=ior(b'1',[integer(1)::])
integer(2),parameter::pior2(0)=ior([integer(2)::],b'11')
integer(2),parameter::pior22(0)=ior(b'1',[integer(2)::])
integer(4),parameter::pior3(0)=ior([integer(4)::],b'11')
integer(4),parameter::pior33(0)=ior(b'1',[integer(4)::])
integer(8),parameter::pior4(0)=ior([integer(8)::],b'11')
integer(8),parameter::pior44(0)=ior(b'1',[integer(8)::])

call s31(iand([integer(1)::],b'11'),iand(b'1',[integer(1)::]))
call s32(iand([integer(2)::],b'11'),iand(b'1',[integer(2)::]))
call s33(iand([integer(4)::],b'11'),iand(b'1',[integer(4)::]))
call s34(iand([integer(8)::],b'11'),iand(b'1',[integer(8)::]))
call s31(piand1,piand11)
call s32(piand2,piand22)
call s33(piand3,piand33)
call s34(piand4,piand44)
call s31(ieor([integer(1)::],b'11'),ieor(b'1',[integer(1)::]))
call s32(ieor([integer(2)::],b'11'),ieor(b'1',[integer(2)::]))
call s33(ieor([integer(4)::],b'11'),ieor(b'1',[integer(4)::]))
call s34(ieor([integer(8)::],b'11'),ieor(b'1',[integer(8)::]))
call s31(pieor1,pieor11)
call s32(pieor2,pieor22)
call s33(pieor3,pieor33)
call s34(pieor4,pieor44)
call s31(ior([integer(1)::],b'11'),ior(b'1',[integer(1)::]))
call s32(ior([integer(2)::],b'11'),ior(b'1',[integer(2)::]))
call s33(ior([integer(4)::],b'11'),ior(b'1',[integer(4)::]))
call s34(ior([integer(8)::],b'11'),ior(b'1',[integer(8)::]))
call s31(pior1,pior11)
call s32(pior2,pior22)
call s33(pior3,pior33)
call s34(pior4,pior44)

contains
subroutine s31(a,b)
integer(1)::a(:),b(:)
if(any(a/=b)) print *,'err'
end subroutine
subroutine s32(a,b)
integer(2)::a(:),b(:)
if(any(a/=b)) print *,'err'
end subroutine
subroutine s33(a,b)
integer(4)::a(:),b(:)
if(any(a/=b)) print *,'err'
end subroutine
subroutine s34(a,b)
integer(8)::a(:),b(:)
if(any(a/=b)) print *,'err'
end subroutine
end
subroutine s4
integer(1),parameter::piand1=iand(1_1,o'3')
integer(1),parameter::piand11=iand(o'1',3_1)
integer(2),parameter::piand2=iand(1_2,o'3')
integer(2),parameter::piand22=iand(o'1',3_2)
integer(4),parameter::piand3=iand(1_4,o'3')
integer(4),parameter::piand33=iand(o'1',3_4)
integer(8),parameter::piand4=iand(1_8,o'3')
integer(8),parameter::piand44=iand(o'1',3_8)
integer(1),parameter::pieor1=ieor(1_1,o'3')
integer(1),parameter::pieor11=ieor(o'1',3_1)
integer(2),parameter::pieor2=ieor(1_2,o'3')
integer(2),parameter::pieor22=ieor(o'1',3_2)
integer(4),parameter::pieor3=ieor(1_4,o'3')
integer(4),parameter::pieor33=ieor(o'1',3_4)
integer(8),parameter::pieor4=ieor(1_8,o'3')
integer(8),parameter::pieor44=ieor(o'1',3_8)
integer(1),parameter::pior1=ior(1_1,o'3')
integer(1),parameter::pior11=ior(o'1',3_1)
integer(2),parameter::pior2=ior(1_2,o'3')
integer(2),parameter::pior22=ior(o'1',3_2)
integer(4),parameter::pior3=ior(1_4,o'3')
integer(4),parameter::pior33=ior(o'1',3_4)
integer(8),parameter::pior4=ior(1_8,o'3')
integer(8),parameter::pior44=ior(o'1',3_8)

call s41(iand(1_1,o'3'),iand(o'1',3_1))
call s42(iand(1_2,o'3'),iand(o'1',3_2))
call s43(iand(1_4,o'3'),iand(o'1',3_4))
call s44(iand(1_8,o'3'),iand(o'1',3_8))
call s41(piand1,piand11)
call s42(piand2,piand22)
call s43(piand3,piand33)
call s44(piand4,piand44)
call s41(ieor(1_1,o'3'),ieor(o'1',3_1))
call s42(ieor(1_2,o'3'),ieor(o'1',3_2))
call s43(ieor(1_4,o'3'),ieor(o'1',3_4))
call s44(ieor(1_8,o'3'),ieor(o'1',3_8))
call s41(pieor1,pieor11)
call s42(pieor2,pieor22)
call s43(pieor3,pieor33)
call s44(pieor4,pieor44)
call s41(ior(1_1,o'3'),ior(o'1',3_1))
call s42(ior(1_2,o'3'),ior(o'1',3_2))
call s43(ior(1_4,o'3'),ior(o'1',3_4))
call s44(ior(1_8,o'3'),ior(o'1',3_8))
call s41(pior1,pior11)
call s42(pior2,pior22)
call s43(pior3,pior33)
call s44(pior4,pior44)
contains
subroutine s41(a,b)
integer(1)::a,b
if(a/=b) print *,'err'
end subroutine
subroutine s42(a,b)
integer(2)::a,b
if(a/=b) print *,'err'
end subroutine
subroutine s43(a,b)
integer(4)::a,b
if(a/=b) print *,'err'
end subroutine
subroutine s44(a,b)
integer(8)::a,b
if(a/=b) print *,'err'
end subroutine
end
subroutine s5
integer(1),parameter::piand1(1)=iand([1_1],o'3')
integer(1),parameter::piand11(1)=iand(o'1',[3_1])
integer(2),parameter::piand2(1)=iand([1_2],o'3')
integer(2),parameter::piand22(1)=iand(o'1',[3_2])
integer(4),parameter::piand3(1)=iand([1_4],o'3')
integer(4),parameter::piand33(1)=iand(o'1',[3_4])
integer(8),parameter::piand4(1)=iand([1_8],o'3')
integer(8),parameter::piand44(1)=iand(o'1',[3_8])
integer(1),parameter::pieor1(1)=ieor([1_1],o'3')
integer(1),parameter::pieor11(1)=ieor(o'1',[3_1])
integer(2),parameter::pieor2(1)=ieor([1_2],o'3')
integer(2),parameter::pieor22(1)=ieor(o'1',[3_2])
integer(4),parameter::pieor3(1)=ieor([1_4],o'3')
integer(4),parameter::pieor33(1)=ieor(o'1',[3_4])
integer(8),parameter::pieor4(1)=ieor([1_8],o'3')
integer(8),parameter::pieor44(1)=ieor(o'1',[3_8])
integer(1),parameter::pior1(1)=ior([1_1],o'3')
integer(1),parameter::pior11(1)=ior(o'1',[3_1])
integer(2),parameter::pior2(1)=ior([1_2],o'3')
integer(2),parameter::pior22(1)=ior(o'1',[3_2])
integer(4),parameter::pior3(1)=ior([1_4],o'3')
integer(4),parameter::pior33(1)=ior(o'1',[3_4])
integer(8),parameter::pior4(1)=ior([1_8],o'3')
integer(8),parameter::pior44(1)=ior(o'1',[3_8])

call s51(iand([1_1],o'3'),iand(o'1',[3_1]))
call s52(iand([1_2],o'3'),iand(o'1',[3_2]))
call s53(iand([1_4],o'3'),iand(o'1',[3_4]))
call s54(iand([1_8],o'3'),iand(o'1',[3_8]))
call s51(piand1,piand11)
call s52(piand2,piand22)
call s53(piand3,piand33)
call s54(piand4,piand44)
call s51(ieor([1_1],o'3'),ieor(o'1',[3_1]))
call s52(ieor([1_2],o'3'),ieor(o'1',[3_2]))
call s53(ieor([1_4],o'3'),ieor(o'1',[3_4]))
call s54(ieor([1_8],o'3'),ieor(o'1',[3_8]))
call s51(pieor1,pieor11)
call s52(pieor2,pieor22)
call s53(pieor3,pieor33)
call s54(pieor4,pieor44)
call s51(ior([1_1],o'3'),ior(o'1',[3_1]))
call s52(ior([1_2],o'3'),ior(o'1',[3_2]))
call s53(ior([1_4],o'3'),ior(o'1',[3_4]))
call s54(ior([1_8],o'3'),ior(o'1',[3_8]))
call s51(pior1,pior11)
call s52(pior2,pior22)
call s53(pior3,pior33)
call s54(pior4,pior44)

contains
subroutine s51(a,b)
integer(1)::a(:),b(:)
if(any(a/=b)) print *,'err'
end subroutine
subroutine s52(a,b)
integer(2)::a(:),b(:)
if(any(a/=b)) print *,'err'
end subroutine
subroutine s53(a,b)
integer(4)::a(:),b(:)
if(any(a/=b)) print *,'err'
end subroutine
subroutine s54(a,b)
integer(8)::a(:),b(:)
if(any(a/=b)) print *,'err'
end subroutine
end

subroutine s6
integer(1),parameter::piand1(0)=iand([integer(1)::],o'3')
integer(1),parameter::piand11(0)=iand(o'1',[integer(1)::])
integer(2),parameter::piand2(0)=iand([integer(2)::],o'3')
integer(2),parameter::piand22(0)=iand(o'1',[integer(2)::])
integer(4),parameter::piand3(0)=iand([integer(4)::],o'3')
integer(4),parameter::piand33(0)=iand(o'1',[integer(4)::])
integer(8),parameter::piand4(0)=iand([integer(8)::],o'3')
integer(8),parameter::piand44(0)=iand(o'1',[integer(8)::])
integer(1),parameter::pieor1(0)=ieor([integer(1)::],o'3')
integer(1),parameter::pieor11(0)=ieor(o'1',[integer(1)::])
integer(2),parameter::pieor2(0)=ieor([integer(2)::],o'3')
integer(2),parameter::pieor22(0)=ieor(o'1',[integer(2)::])
integer(4),parameter::pieor3(0)=ieor([integer(4)::],o'3')
integer(4),parameter::pieor33(0)=ieor(o'1',[integer(4)::])
integer(8),parameter::pieor4(0)=ieor([integer(8)::],o'3')
integer(8),parameter::pieor44(0)=ieor(o'1',[integer(8)::])
integer(1),parameter::pior1(0)=ior([integer(1)::],o'3')
integer(1),parameter::pior11(0)=ior(o'1',[integer(1)::])
integer(2),parameter::pior2(0)=ior([integer(2)::],o'3')
integer(2),parameter::pior22(0)=ior(o'1',[integer(2)::])
integer(4),parameter::pior3(0)=ior([integer(4)::],o'3')
integer(4),parameter::pior33(0)=ior(o'1',[integer(4)::])
integer(8),parameter::pior4(0)=ior([integer(8)::],o'3')
integer(8),parameter::pior44(0)=ior(o'1',[integer(8)::])

call s61(iand([integer(1)::],o'3'),iand(o'1',[integer(1)::]))
call s62(iand([integer(2)::],o'3'),iand(o'1',[integer(2)::]))
call s63(iand([integer(4)::],o'3'),iand(o'1',[integer(4)::]))
call s64(iand([integer(8)::],o'3'),iand(o'1',[integer(8)::]))
call s61(piand1,piand11)
call s62(piand2,piand22)
call s63(piand3,piand33)
call s64(piand4,piand44)
call s61(ieor([integer(1)::],o'3'),ieor(o'1',[integer(1)::]))
call s62(ieor([integer(2)::],o'3'),ieor(o'1',[integer(2)::]))
call s63(ieor([integer(4)::],o'3'),ieor(o'1',[integer(4)::]))
call s64(ieor([integer(8)::],o'3'),ieor(o'1',[integer(8)::]))
call s61(pieor1,pieor11)
call s62(pieor2,pieor22)
call s63(pieor3,pieor33)
call s64(pieor4,pieor44)
call s61(ior([integer(1)::],o'3'),ior(o'1',[integer(1)::]))
call s62(ior([integer(2)::],o'3'),ior(o'1',[integer(2)::]))
call s63(ior([integer(4)::],o'3'),ior(o'1',[integer(4)::]))
call s64(ior([integer(8)::],o'3'),ior(o'1',[integer(8)::]))
call s61(pior1,pior11)
call s62(pior2,pior22)
call s63(pior3,pior33)
call s64(pior4,pior44)

contains
subroutine s61(a,b)
integer(1)::a(:),b(:)
if(any(a/=b)) print *,'err'
end subroutine
subroutine s62(a,b)
integer(2)::a(:),b(:)
if(any(a/=b)) print *,'err'
end subroutine
subroutine s63(a,b)
integer(4)::a(:),b(:)
if(any(a/=b)) print *,'err'
end subroutine
subroutine s64(a,b)
integer(8)::a(:),b(:)
if(any(a/=b)) print *,'err'
end subroutine
end
subroutine s7
integer(1),parameter::piand1=iand(1_1,z'3')
integer(1),parameter::piand11=iand(z'1',3_1)
integer(2),parameter::piand2=iand(1_2,z'3')
integer(2),parameter::piand22=iand(z'1',3_2)
integer(4),parameter::piand3=iand(1_4,z'3')
integer(4),parameter::piand33=iand(z'1',3_4)
integer(8),parameter::piand4=iand(1_8,z'3')
integer(8),parameter::piand44=iand(z'1',3_8)
integer(1),parameter::pieor1=ieor(1_1,z'3')
integer(1),parameter::pieor11=ieor(z'1',3_1)
integer(2),parameter::pieor2=ieor(1_2,z'3')
integer(2),parameter::pieor22=ieor(z'1',3_2)
integer(4),parameter::pieor3=ieor(1_4,z'3')
integer(4),parameter::pieor33=ieor(z'1',3_4)
integer(8),parameter::pieor4=ieor(1_8,z'3')
integer(8),parameter::pieor44=ieor(z'1',3_8)
integer(1),parameter::pior1=ior(1_1,z'3')
integer(1),parameter::pior11=ior(z'1',3_1)
integer(2),parameter::pior2=ior(1_2,z'3')
integer(2),parameter::pior22=ior(z'1',3_2)
integer(4),parameter::pior3=ior(1_4,z'3')
integer(4),parameter::pior33=ior(z'1',3_4)
integer(8),parameter::pior4=ior(1_8,z'3')
integer(8),parameter::pior44=ior(z'1',3_8)

call s71(iand(1_1,z'3'),iand(z'1',3_1))
call s72(iand(1_2,z'3'),iand(z'1',3_2))
call s73(iand(1_4,z'3'),iand(z'1',3_4))
call s74(iand(1_8,z'3'),iand(z'1',3_8))
call s71(piand1,piand11)
call s72(piand2,piand22)
call s73(piand3,piand33)
call s74(piand4,piand44)
call s71(ieor(1_1,z'3'),ieor(z'1',3_1))
call s72(ieor(1_2,z'3'),ieor(z'1',3_2))
call s73(ieor(1_4,z'3'),ieor(z'1',3_4))
call s74(ieor(1_8,z'3'),ieor(z'1',3_8))
call s71(pieor1,pieor11)
call s72(pieor2,pieor22)
call s73(pieor3,pieor33)
call s74(pieor4,pieor44)
call s71(ior(1_1,z'3'),ior(z'1',3_1))
call s72(ior(1_2,z'3'),ior(z'1',3_2))
call s73(ior(1_4,z'3'),ior(z'1',3_4))
call s74(ior(1_8,z'3'),ior(z'1',3_8))
call s71(pior1,pior11)
call s72(pior2,pior22)
call s73(pior3,pior33)
call s74(pior4,pior44)
contains
subroutine s71(a,b)
integer(1)::a,b
if(a/=b) print *,'err'
end subroutine
subroutine s72(a,b)
integer(2)::a,b
if(a/=b) print *,'err'
end subroutine
subroutine s73(a,b)
integer(4)::a,b
if(a/=b) print *,'err'
end subroutine
subroutine s74(a,b)
integer(8)::a,b
if(a/=b) print *,'err'
end subroutine
end
subroutine s8
integer(1),parameter::piand1(1)=iand([1_1],z'3')
integer(1),parameter::piand11(1)=iand(z'1',[3_1])
integer(2),parameter::piand2(1)=iand([1_2],z'3')
integer(2),parameter::piand22(1)=iand(z'1',[3_2])
integer(4),parameter::piand3(1)=iand([1_4],z'3')
integer(4),parameter::piand33(1)=iand(z'1',[3_4])
integer(8),parameter::piand4(1)=iand([1_8],z'3')
integer(8),parameter::piand44(1)=iand(z'1',[3_8])
integer(1),parameter::pieor1(1)=ieor([1_1],z'3')
integer(1),parameter::pieor11(1)=ieor(z'1',[3_1])
integer(2),parameter::pieor2(1)=ieor([1_2],z'3')
integer(2),parameter::pieor22(1)=ieor(z'1',[3_2])
integer(4),parameter::pieor3(1)=ieor([1_4],z'3')
integer(4),parameter::pieor33(1)=ieor(z'1',[3_4])
integer(8),parameter::pieor4(1)=ieor([1_8],z'3')
integer(8),parameter::pieor44(1)=ieor(z'1',[3_8])
integer(1),parameter::pior1(1)=ior([1_1],z'3')
integer(1),parameter::pior11(1)=ior(z'1',[3_1])
integer(2),parameter::pior2(1)=ior([1_2],z'3')
integer(2),parameter::pior22(1)=ior(z'1',[3_2])
integer(4),parameter::pior3(1)=ior([1_4],z'3')
integer(4),parameter::pior33(1)=ior(z'1',[3_4])
integer(8),parameter::pior4(1)=ior([1_8],z'3')
integer(8),parameter::pior44(1)=ior(z'1',[3_8])

call s81(iand([1_1],z'3'),iand(z'1',[3_1]))
call s82(iand([1_2],z'3'),iand(z'1',[3_2]))
call s83(iand([1_4],z'3'),iand(z'1',[3_4]))
call s84(iand([1_8],z'3'),iand(z'1',[3_8]))
call s81(piand1,piand11)
call s82(piand2,piand22)
call s83(piand3,piand33)
call s84(piand4,piand44)
call s81(ieor([1_1],z'3'),ieor(z'1',[3_1]))
call s82(ieor([1_2],z'3'),ieor(z'1',[3_2]))
call s83(ieor([1_4],z'3'),ieor(z'1',[3_4]))
call s84(ieor([1_8],z'3'),ieor(z'1',[3_8]))
call s81(pieor1,pieor11)
call s82(pieor2,pieor22)
call s83(pieor3,pieor33)
call s84(pieor4,pieor44)
call s81(ior([1_1],z'3'),ior(z'1',[3_1]))
call s82(ior([1_2],z'3'),ior(z'1',[3_2]))
call s83(ior([1_4],z'3'),ior(z'1',[3_4]))
call s84(ior([1_8],z'3'),ior(z'1',[3_8]))
call s81(pior1,pior11)
call s82(pior2,pior22)
call s83(pior3,pior33)
call s84(pior4,pior44)

contains
subroutine s81(a,b)
integer(1)::a(:),b(:)
if(any(a/=b)) print *,'err'
end subroutine
subroutine s82(a,b)
integer(2)::a(:),b(:)
if(any(a/=b)) print *,'err'
end subroutine
subroutine s83(a,b)
integer(4)::a(:),b(:)
if(any(a/=b)) print *,'err'
end subroutine
subroutine s84(a,b)
integer(8)::a(:),b(:)
if(any(a/=b)) print *,'err'
end subroutine
end

subroutine s9
integer(1),parameter::piand1(0)=iand([integer(1)::],z'3')
integer(1),parameter::piand11(0)=iand(z'1',[integer(1)::])
integer(2),parameter::piand2(0)=iand([integer(2)::],z'3')
integer(2),parameter::piand22(0)=iand(z'1',[integer(2)::])
integer(4),parameter::piand3(0)=iand([integer(4)::],z'3')
integer(4),parameter::piand33(0)=iand(z'1',[integer(4)::])
integer(8),parameter::piand4(0)=iand([integer(8)::],z'3')
integer(8),parameter::piand44(0)=iand(z'1',[integer(8)::])
integer(1),parameter::pieor1(0)=ieor([integer(1)::],z'3')
integer(1),parameter::pieor11(0)=ieor(z'1',[integer(1)::])
integer(2),parameter::pieor2(0)=ieor([integer(2)::],z'3')
integer(2),parameter::pieor22(0)=ieor(z'1',[integer(2)::])
integer(4),parameter::pieor3(0)=ieor([integer(4)::],z'3')
integer(4),parameter::pieor33(0)=ieor(z'1',[integer(4)::])
integer(8),parameter::pieor4(0)=ieor([integer(8)::],z'3')
integer(8),parameter::pieor44(0)=ieor(z'1',[integer(8)::])
integer(1),parameter::pior1(0)=ior([integer(1)::],z'3')
integer(1),parameter::pior11(0)=ior(z'1',[integer(1)::])
integer(2),parameter::pior2(0)=ior([integer(2)::],z'3')
integer(2),parameter::pior22(0)=ior(z'1',[integer(2)::])
integer(4),parameter::pior3(0)=ior([integer(4)::],z'3')
integer(4),parameter::pior33(0)=ior(z'1',[integer(4)::])
integer(8),parameter::pior4(0)=ior([integer(8)::],z'3')
integer(8),parameter::pior44(0)=ior(z'1',[integer(8)::])

call s91(iand([integer(1)::],z'3'),iand(z'1',[integer(1)::]))
call s92(iand([integer(2)::],z'3'),iand(z'1',[integer(2)::]))
call s93(iand([integer(4)::],z'3'),iand(z'1',[integer(4)::]))
call s94(iand([integer(8)::],z'3'),iand(z'1',[integer(8)::]))
call s91(piand1,piand11)
call s92(piand2,piand22)
call s93(piand3,piand33)
call s94(piand4,piand44)
call s91(ieor([integer(1)::],z'3'),ieor(z'1',[integer(1)::]))
call s92(ieor([integer(2)::],z'3'),ieor(z'1',[integer(2)::]))
call s93(ieor([integer(4)::],z'3'),ieor(z'1',[integer(4)::]))
call s94(ieor([integer(8)::],z'3'),ieor(z'1',[integer(8)::]))
call s91(pieor1,pieor11)
call s92(pieor2,pieor22)
call s93(pieor3,pieor33)
call s94(pieor4,pieor44)
call s91(ior([integer(1)::],z'3'),ior(z'1',[integer(1)::]))
call s92(ior([integer(2)::],z'3'),ior(z'1',[integer(2)::]))
call s93(ior([integer(4)::],z'3'),ior(z'1',[integer(4)::]))
call s94(ior([integer(8)::],z'3'),ior(z'1',[integer(8)::]))
call s91(pior1,pior11)
call s92(pior2,pior22)
call s93(pior3,pior33)
call s94(pior4,pior44)

contains
subroutine s91(a,b)
integer(1)::a(:),b(:)
if(any(a/=b)) print *,'err'
end subroutine
subroutine s92(a,b)
integer(2)::a(:),b(:)
if(any(a/=b)) print *,'err'
end subroutine
subroutine s93(a,b)
integer(4)::a(:),b(:)
if(any(a/=b)) print *,'err'
end subroutine
subroutine s94(a,b)
integer(8)::a(:),b(:)
if(any(a/=b)) print *,'err'
end subroutine
end
