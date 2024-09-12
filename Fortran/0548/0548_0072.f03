call s1
call s2
call s3
call s4
call s5
call s6
call s7
call s8
call s9
call s10
print *,'pass'
end
subroutine s1
integer(1)::i11=nint(a=2.783_4,kind=1)
integer(1)::i12=nint(2.783_8,1)
integer(1)::i13=nint(2.783_16,1)
integer(2)::i21=nint(2.783_4,2)
integer(2)::i22=nint(2.783_8,2)
integer(2)::i23=nint(2.783_16,2)
integer(4)::i41=nint(2.783_4,4)
integer(4)::i42=nint(2.783_8,4)
integer(4)::i43=nint(2.783_16,4)
integer(8)::i81=nint(2.783_4,8)
integer(8)::i82=nint(2.783_8,8)
integer(8)::i83=nint(2.783_16,8)

if(i11/=nint(a=2.783_4,kind=1)) print *,'err'
if(i12/=nint(2.783_8,1)) print *,'err'
if(i13/=nint(2.783_16,1)) print *,'err'
if(i21/=nint(2.783_4,2)) print *,'err'
if(i22/=nint(2.783_8,2)) print *,'err'
if(i23/=nint(2.783_16,2)) print *,'err'
if(i41/=nint(2.783_4,4)) print *,'err'
if(i42/=nint(2.783_8,4)) print *,'err'
if(i43/=nint(2.783_16,4)) print *,'err'
if(i81/=nint(2.783_4,8)) print *,'err'
if(i82/=nint(2.783_8,8)) print *,'err'
if(i83/=nint(2.783_16,8)) print *,'err'
end
subroutine s2
real(4)::r1=rrspacing(x=-3.0_4)
real(8)::r2=rrspacing(-3.0_8)
real(16)::r3=rrspacing(-3.0_16)
real(16)::r4(2)=rrspacing([-3.0_16,-3.0_16])

if(r1/=rrspacing(x=-3.0_4)) print *,'err'
if(r2/=rrspacing(-3.0_8)) print *,'err'
if(r3/=rrspacing(-3.0_16)) print *,'err'
if(any(r4/=rrspacing([-3.0_16,-3.0_16]))) print *,'err'
end
subroutine s3
real(4)::r1=scale(x=3.0_4,i=2_1)
real(4)::r2=scale(3.0_4,2_2)
real(4)::r3=scale(3.0_4,2_4)
real(4)::r4=scale(3.0_4,2_8)
real(8)::r5=scale(3.0_8,2_1)
real(8)::r6=scale(3.0_8,2_2)
real(8)::r7=scale(3.0_8,2_4)
real(8)::r8=scale(3.0_8,2_8)
real(16)::r9=scale(3.0_16,2_1)
real(16)::r10=scale(3.0_16,2_2)
real(16)::r11=scale(3.0_16,2_4)
real(16)::r12=scale(3.0_16,2_8)
real(16)::r13(2)=scale(3.0_16,[2_8,2_8])

if(r1/=scale(x=3.0_4,i=2_1))  print *,'err'
if(r2/=scale(3.0_4,2_2)) print *,'err'
if(r3/=scale(3.0_4,2_4)) print *,'err'
if(r4/=scale(3.0_4,2_8)) print *,'err'
if(r5/=scale(3.0_8,2_1))  print *,'err'
if(r6/=scale(3.0_8,2_2)) print *,'err'
if(r7/=scale(3.0_8,2_4)) print *,'err'
if(r8/=scale(3.0_8,2_8)) print *,'err'
if(r9/=scale(3.0_16,2_1))  print *,'err'
if(r10/=scale(3.0_16,2_2)) print *,'err'
if(r11/=scale(3.0_16,2_4)) print *,'err'
if(r12/=scale(3.0_16,2_8)) print *,'err'
if(any(r13/=scale(3.0_16,[2_8,2_8]))) print *,'err'
end
subroutine s4
real(4)::r1=set_exponent(x=3.0_4,i=1_1)
real(4)::r2=set_exponent(3.0_4,1_2)
real(4)::r3=set_exponent(3.0_4,1_4)
real(4)::r4=set_exponent(3.0_4,1_8)
real(8)::r5=set_exponent(3.0_8,1_1)
real(8)::r6=set_exponent(3.0_8,1_2)
real(8)::r7=set_exponent(3.0_8,1_4)
real(8)::r8=set_exponent(3.0_8,1_8)
real(16)::r9=set_exponent(3.0_16,1_1)
real(16)::r10=set_exponent(3.0_16,1_2)
real(16)::r11=set_exponent(3.0_16,1_4)
real(16)::r12=set_exponent(3.0_16,1_8)
real(16)::r13(2)=set_exponent(3.0_16,[1_8,1_8])

if(r1/=set_exponent(x=3.0_4,i=1_1))  print *,'err'
if(r2/=set_exponent(3.0_4,1_2)) print *,'err'
if(r3/=set_exponent(3.0_4,1_4)) print *,'err'
if(r4/=set_exponent(3.0_4,1_8)) print *,'err'
if(r5/=set_exponent(3.0_8,1_1))  print *,'err'
if(r6/=set_exponent(3.0_8,1_2)) print *,'err'
if(r7/=set_exponent(3.0_8,1_4)) print *,'err'
if(r8/=set_exponent(3.0_8,1_8)) print *,'err'
if(r9/=set_exponent(3.0_16,1_1))  print *,'err'
if(r10/=set_exponent(3.0_16,1_2)) print *,'err'
if(r11/=set_exponent(3.0_16,1_4)) print *,'err'
if(r12/=set_exponent(3.0_16,1_8)) print *,'err'
if(any(r13/=set_exponent(3.0_16,[1_8,1_8]))) print *,'err'
end
subroutine s5
real(8)::r2=sin(1.0_8)
real(16)::r3=sin(1.0_16)
complex(4)::c1=sin((1.0_4,0.0_4))
complex(8)::c2=sin((1.0_8,0.0_8))
complex(16)::c3=sin((1.0_16,0.0_16))
complex(16)::c4(2)=sin([(1.0_16,0.0_16),(1.0_16,0.0_16)])

if(r2/=sin(1.0_8)) print *,'err2'
if(r3/=sin(1.0_16)) print *,'err3'
if(c1/=sin((1.0_4,0.0_4))) print *,'err4'
if(c2/=sin((1.0_8,0.0_8))) print *,'err5'
if(c3/=sin((1.0_16,0.0_16))) print *,'err6'
if(any(c4/=sin([(1.0_16,0.0_16),(1.0_16,0.0_16)]))) print *,'err7'
end
subroutine s6
real(4)::r1=sinh(x=1.0_4)
real(8)::r2=sinh(1.0_8)
real(16)::r3=sinh(1.0_16)
real(16)::r4(2)=sinh([1.0_16,1.0_16])

if(r1/=sinh(x=1.0_4))  print *,'err'
if(r2/=sinh(1.0_8)) print *,'err'
if(r3/=sinh(1.0_16)) print *,'err'
if(any(r4/=sinh([1.0_16,1.0_16]))) print *,'err'
end
subroutine s7
real(4)::r1=spacing(x=3.0_4)
real(8)::r2=spacing(3.0_8)
real(16)::r3=spacing(3.0_16)
real(16)::r4(2)=spacing([3.0_16,3.0_16])

if(r1/=spacing(x=3.0_4))  print *,'err'
if(r2/=spacing(3.0_8)) print *,'err'
if(r3/=spacing(3.0_16)) print *,'err'
if(any(r4/=spacing([3.0_16,3.0_16])))  print *,'err'
end
subroutine s8
real(4)::r1=sqrt(x=4.0_4)
real(8)::r2=sqrt(4.0_8)
real(16)::r3=sqrt(4.0_16)
complex(4)::c1=sqrt((4.0_4,0.0_4))
complex(8)::c2=sqrt((4.0_8,0.0_8))
complex(16)::c3=sqrt((4.0_16,0.0_16))
complex(16)::c4(2)=sqrt([(4.0_16,0.0_16),(4.0_16,0.0_16)])

if(r1/=sqrt(x=4.0_4)) print *,'err1'
if(r2/=sqrt(4.0_8)) print *,'err2'
if(r3/=sqrt(4.0_16)) print *,'err3'
if(c1/=sqrt((4.0_4,0.0_4))) print *,'err4'
if(c2/=sqrt((4.0_8,0.0_8))) print *,'err5'
if(c3/=sqrt((4.0_16,0.0_16))) print *,'err6'
if(any(c4/=sqrt([(4.0_16,0.0_16),(4.0_16,0.0_16)]))) print *,'err7'
end
subroutine s9
real(4)::r1=tan(x=1.0_4)
real(8)::r2=tan(1.0_8)
real(16)::r3=tan(1.0_16)
real(16)::r4(2)=tan([1.0_16,1.0_16])

if(r1/=tan(x=1.0_4)) print *,'err'
if(r2/=tan(1.0_8)) print *,'err'
if(r3/=tan(1.0_16)) print *,'err'
if(any(r4/=tan([1.0_16,1.0_16]))) print *,'err'
end

subroutine s10
real(4)::r1=tanh(x=1.0_4)
real(8)::r2=tanh(1.0_8)
real(16)::r3=tanh(1.0_16)
real(16)::r4(2)=tanh([1.0_16,1.0_16])

if(r1/=tanh(x=1.0_4)) print *,'err'
if(r2/=tanh(1.0_8)) print *,'err'
if(r3/=tanh(1.0_16)) print *,'err'
if(any(r4/=tanh([1.0_16,1.0_16]))) print *,'err'
end
