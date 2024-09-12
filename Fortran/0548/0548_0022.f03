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

r4=1.1752012_4
r8=1.1752012_8
r16=1.1752012_16
c=(1.1752012_4,0.0_4)
cd=(1.1752012_8,0.0_8)
cq=(1.1752012_16,0.0_16)

if(ASINH(1.1752012_4)/=ASINH(r4)) print *,'err1'

if(ASINH(1.1752012_8)/=ASINH(r8)) print *,'err2'
if(ASINH(1.1752012_16)/=ASINH(r16)) print *,'err3'
if(ASINH((1.1752012_4,0.0_4))/=ASINH(c)) print *,'err4'
if(ASINH((1.1752012_8,0.0_8))/=ASINH(cd)) print *,'err5'
if(dcmplx(ASINH((1.1752012_16,0.0_16)))/=dcmplx(ASINH(cq))) print *,'err6'
if(ASINH(r4)/=1.0_4) print *,'err7'
end subroutine
subroutine s2
real(4)::r4
real(8)::r8
real(16)::r16
complex(4)::c
complex(8)::cd
complex(16)::cq

r4=1.1752012_4
r8=1.1752012_8
r16=1.1752012_16
c=(1.1752012_4,0.0_4)
cd=(1.1752012_8,0.0_8)
cq=(1.1752012_16,0.0_16)

if(ASINH(x=1.1752012_4)/=ASINH(X=r4)) print *,'err11'
if(ASINH(x=1.1752012_8)/=ASINH(X=r8)) print *,'err12'
if(ASINH(x=1.1752012_16)/=ASINH(X=r16)) print *,'err13'
if(ASINH(x=(1.1752012_4,0.0_4))/=ASINH(X=c)) print *,'err14'
if(ASINH(x=(1.1752012_8,0.0_8))/=ASINH(X=cd)) print *,'err15'
if(dcmplx(ASINH(x=(1.1752012_16,0.0_16)))/=dcmplx(ASINH(X=cq))) print *,'err16'
if(ASINH(x=r4)/=1.0_4) print *,'err17'
end subroutine
subroutine s3
real(4)::r4(1)
real(8)::r8(1)
real(16)::r16(1)
complex(4)::c(1)
complex(8)::cd(1)
complex(16)::cq(1)

r4=1.1752012_4
r8=1.1752012_8
r16=1.1752012_16
c=(1.1752012_4,0.0_4)
cd=(1.1752012_8,0.0_8)
cq=(1.1752012_16,0.0_16)

if(any(ASINH([1.1752012_4])/=ASINH(r4))) print *,'err21'
if(any(ASINH([1.1752012_8])/=ASINH(r8))) print *,'err22'
if(any(ASINH(x=[1.1752012_16])/=ASINH(X=r16))) print *,'err23'
if(any(ASINH(x=[(1.1752012_4,0.0_4)])/=ASINH(X=c))) print *,'err24'
if(any(ASINH(x=[(1.1752012_8,0.0_8)])/=ASINH(X=cd))) print *,'err25'
if(any(dcmplx(ASINH(x=[(1.1752012_16,0.0_16)]))/=dcmplx(ASINH(X=cq)))) print *,'err26'
if(any(ASINH(r4)/=[1.0_4])) print *,'err27'
end subroutine
end
