call s7
print *,'pass'
end
subroutine s7
real(2)::r6
real(4)::r1=spacing(x=3.0_4)
real(8)::r2=spacing(3.0_8)
real(16)::r3=spacing(3.0_16)
real(16)::r4(2)=spacing([3.0_16,3.0_16])
real(2)::r5(2)

if(r1/=spacing(x=3.0_4))  print *,'err'
if(r2/=spacing(3.0_8)) print *,'err'
if(r3/=spacing(3.0_16)) print *,'err'
if(any(r4/=spacing([3.0_16,3.0_16])))  print *,'err'
r6 =spacing(x=3.0_2)
if (kind(spacing(x=3.0_2))/=2) print *,801
if(abs(r6)> 0.1_2)  print *,'err-10'
r5 =spacing(x=[3.0_2,3.0_2])
if (kind(spacing(x=[3.0_2,3.0_2]))/=2) print *,802
if(any(abs(r5)> 0.1_2))  print *,'err-10'
end
