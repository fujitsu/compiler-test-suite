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
integer::i1=exponent(x=0.0_4)
integer::i2=exponent(0.0_8)
integer::i3=exponent(0.0_16)
integer::i4=exponent(1.0_4)
integer::i5=exponent(1.0_8)
integer::i6=exponent(1.0_16)
integer::i7(2)=exponent([1.0_16,1.0_16])

if(i1/=exponent(x=0.0_4)) print *,'err'
if(i2/=exponent(x=0.0_8)) print *,'err'
if(i3/=exponent(x=0.0_16)) print *,'err'
if(i4/=exponent(x=1.0_4)) print *,'err'
if(i5/=exponent(x=1.0_8)) print *,'err'
if(i6/=exponent(x=1.0_16)) print *,'err'
if(any(i7/=exponent([1.0_16,1.0_16]))) print *,'err'
end
subroutine s2
real(4)::r1=fraction(x=3.0_4)
real(8)::r2=fraction(3.0_8)
real(16)::r3=fraction(3.0_16)
real(16)::r4(2)=fraction([3.0_16,3.0_16])

if(r1/=fraction(x=3.0_4)) print *,'err'
if(r2/=fraction(3.0_8)) print *,'err'
if(r3/=fraction(3.0_16)) print *,'err'
if(any(r4/=fraction([3.0_16,3.0_16]))) print *,'err'
end
subroutine s3
logical::l1=is_iostat_end(i=1_1)
logical::l2=is_iostat_end(1_2)
logical::l3=is_iostat_end(1_4)
logical::l4=is_iostat_end(1_8)
logical::l5(2)=is_iostat_end([1_8,1_8])

if(l1.neqv.is_iostat_end(i=1_1)) print *,'err'
if(l2.neqv.is_iostat_end(1_2)) print *,'err'
if(l3.neqv.is_iostat_end(1_4)) print *,'err'
if(l4.neqv.is_iostat_end(1_8)) print *,'err'
if(any(l5.neqv.is_iostat_end([1_8,1_8]))) print *,'err'
end
subroutine s4
logical::l1=is_iostat_eor(i=1_1)
logical::l2=is_iostat_eor(1_2)
logical::l3=is_iostat_eor(1_4)
logical::l4=is_iostat_eor(1_8)
logical::l5(2)=is_iostat_eor([1_8,1_8])

if(l1.neqv.is_iostat_eor(i=1_1)) print *,'err'
if(l2.neqv.is_iostat_eor(1_2)) print *,'err'
if(l3.neqv.is_iostat_eor(1_4)) print *,'err'
if(l4.neqv.is_iostat_eor(1_8)) print *,'err'
if(any(l5.neqv.is_iostat_eor([1_8,1_8]))) print *,'err'
end
subroutine s5
real(4)::r1=log(x=10.0_4)
real(8)::r2=log(10.0_8)
real(16)::r3=log(10.0_16)
real(16)::r4(2)=log([10.0_16,10.0_16])
complex(4)::c1=log(x=(10.0_4,0.0_4))
complex(8)::c2=log(x=(10.0_8,0.0_8))
complex(16)::c3=log(x=(10.0_16,0.0_16))
complex(16)::c4(2)=log(x=[(10.0_16,0.0_16),(10.0_16,0.0_16)])

if(r1/=log(x=10.0_4))  print *,'err'
if(r2/=log(x=10.0_8))  print *,'err'
if(r3/=log(x=10.0_16))  print *,'err'
if(any(r4/=log([10.0_16,10.0_16])))  print *,'err'
if(c1/=log(x=(10.0_4,0.0_4))) print *,'err'
if(c2/=log(x=(10.0_8,0.0_8))) print *,'err'
if(c3/=log(x=(10.0_16,0.0_16))) print *,'err'
if(any(c4/=log(x=[(10.0_16,0.0_16),(10.0_16,0.0_16)]))) print *,'err'
end
subroutine s6
real(4)::r1=log10(x=10.0_4)
real(8)::r2=log10(10.0_8)
real(16)::r3=log10(10.0_16)
real(16)::r4(2)=log10([10.0_16,10.0_16])

if(r1/=log10(x=10.0_4)) print *,'err'
if(r2/=log10(10.0_8)) print *,'err'
if(r3/=log10(10.0_16)) print *,'err'
if(any(r4/=log10([10.0_16,10.0_16])))  print *,'err'
end

subroutine s7
real(4)::r1=mod(a=3.0_4,p=2)
real(8)::r2=mod(3.0_8,2)
real(16)::r3=mod(3.0_16,2)
real(16)::r4(2)=mod(3.0_16,[2,2])

if(r1/=mod(a=3.0_4,p=2)) print *,'err'
if(r2/=mod(3.0_8,2)) print *,'err'
if(r3/=mod(3.0_16,2)) print *,'err'
if(any(r4/=mod(3.0_16,[2,2])))  print *,'err'
end
subroutine s8
real(4)::r1=mod(a=8.0_4,p=5)
real(8)::r2=mod(8.0_8,5)
real(16)::r3=mod(8.0_16,5)
real(16)::r4(2)=mod(8.0_16,[5,5])

if(r1/=mod(a=8.0_4,p=5)) print *,'err'
if(r2/=mod(8.0_8,5)) print *,'err'
if(r3/=mod(8.0_16,5)) print *,'err'
if(any(r4/=mod(8.0_16,[5,5])))  print *,'err'
end
subroutine s9
real(4)::r1=nearest(x=3.0_4,s=2.0_4)
real(8)::r2=nearest(3.0_8,2.0_8)
real(16)::r3=nearest(3.0_16,2.0_16)
real(16)::r4(2)=nearest(3.0_16,[2.0_16,2.0_16])

if(r1/=nearest(x=3.0_4,s=2.0_4)) print *,'err'
if(r2/=nearest(3.0_8,2.0_8)) print *,'err'
if(r3/=nearest(3.0_16,2.0_16)) print *,'err'
if(any(r4/=nearest(3.0_16,[2.0_16,2.0_16]))) print *,'err'
end
subroutine s10
character::c1=new_line("")
character::c2=new_line([""])

if(c1/=new_line("")) print *,'err'
if(c2/=new_line([""])) print *,'err'
end
