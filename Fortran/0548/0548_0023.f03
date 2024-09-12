call s1
call s2
call s3
print *,'pass'
contains
subroutine s1
real(4)::r4
real(8)::r8
real(16)::r16
complex(4)::c
complex(8)::cd
complex(16)::cq

r4=1.5430806_4
r8=1.5430806_8
r16=1.5430806_16
c=(1.5430806_4,0.0_4)
cd=(1.5430806_8,0.0_8)
cq=(1.5430806_16,0.0_16)

if(acosh(1.5430806_4)/=acosh(r4)) print *,'err1'
if(acosh(1.5430806_8)/=acosh(r8)) print *,'err2'
if(acosh(1.5430806_16)/=acosh(r16)) print *,'err3'
if(acosh((1.5430806_4,0.0_4))/=acosh(c)) print *,'err4'
if(acosh((1.5430806_8,0.0_8))/=acosh(cd)) print *,'err5'
if(dcmplx(acosh((1.5430806_16,0.0_16)))/=dcmplx(acosh(cq))) print *,'err6'
if(abs(acosh(r4))-1.0_4> 0.00000001) print *,'err7'
end subroutine
subroutine s2
real(4)::r4
real(8)::r8
real(16)::r16
complex(4)::c
complex(8)::cd
complex(16)::cq

r4=1.5430806_4
r8=1.5430806_8
r16=1.5430806_16
c=(1.5430806_4,0.0_4)
cd=(1.5430806_8,0.0_8)
cq=(1.5430806_16,0.0_16)

if(acosh(x=1.5430806_4)/=acosh(X=r4)) print *,'err11'
if(acosh(x=1.5430806_8)/=acosh(X=r8)) print *,'err12'
if(acosh(x=1.5430806_16)/=acosh(X=r16)) print *,'err13'
if(acosh(x=(1.5430806_4,0.0_4))/=acosh(X=c)) print *,'err14'
if(acosh(x=(1.5430806_8,0.0_8))/=acosh(X=cd)) print *,'err15'
if(dcmplx(acosh(x=(1.5430806_16,0.0_16)))/=dcmplx(acosh(X=cq))) print *,'err16'
if(abs(acosh(x=r4))-1.0_4> 0.00000001) print *,'err17'
end subroutine
subroutine s3
real(4)::r4(1)
real(8)::r8(1)
real(16)::r16(1)
complex(4)::c(1)
complex(8)::cd(1)
complex(16)::cq(1)

r4=1.5430806_4
r8=1.5430806_8
r16=1.5430806_16
c=(1.5430806_4,0.0_4)
cd=(1.5430806_8,0.0_8)
cq=(1.5430806_16,0.0_16)

if(any(acosh([1.5430806_4])/=acosh(r4))) print *,'err21'
if(any(acosh([1.5430806_8])/=acosh(r8))) print *,'err22'
if(any(acosh(x=[1.5430806_16])/=acosh(X=r16))) print *,'err23'
if(any(acosh(x=[(1.5430806_4,0.0_4)])/=acosh(X=c))) print *,'err24'
if(any(acosh(x=[(1.5430806_8,0.0_8)])/=acosh(X=cd))) print *,'err25'
if(any(dcmplx(acosh(x=[(1.5430806_16,0.0_16)]))/=dcmplx(acosh(X=cq)))) print *,'err26'
if(any(abs(acosh(r4))-[1.0_4]> [0.00000001])) print *,'err27'
end subroutine
end
