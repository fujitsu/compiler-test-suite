call sss1
call sss2
print *,'pass'
contains
subroutine sss1
real(4),parameter::r4=20.0_4
real(8),parameter::r8=20.0_8
real(16),parameter::r16=20.0_16
real(4),parameter::res1=erfc_scaled(r4)
real(8),parameter::res2=erfc_scaled(r8)
real(16),parameter::res3=erfc_scaled(r16)

if(res1/=erfc_scaled(r4)) print *,'err1'
if(res2/=erfc_scaled(r8)) print *,'err2'
if(res3/=erfc_scaled(r16)) print *,'err3'
end subroutine
subroutine sss2
real(4),parameter::r4(2,3)=20.0_4
real(8),parameter::r8(2,3)=20.0_8
real(16),parameter::r16(2,3)=20.0_16
real(4),parameter::res1(2,3)=erfc_scaled(r4)
real(8),parameter::res2(2,3)=erfc_scaled(r8)
real(16),parameter::res3(2,3)=erfc_scaled(r16)

if(any(res1/=erfc_scaled(r4))) print *,'err1'
if(any(res2/=erfc_scaled(r8))) print *,'err2'
if(any(res3/=erfc_scaled(r16))) print *,'err3'
end subroutine
end
