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

r4=0.76159416_4
r8=0.76159416_8
r16=0.76159416_16
c=(0.76159416_4,0.0_4)
cd=(0.76159416_8,0.0_8)
cq=(0.76159416_16,0.0_16)

if(ATANH(0.76159416_4**1)/=ATANH(r4)) print *,'err1'
if(ATANH(0.76159416_8**1)/=ATANH(r8)) print *,'err2'
if(ATANH(0.76159416_16**1)/=ATANH(r16)) print *,'err3'
if(ATANH((0.76159416_4,0.0_4)**1)/=ATANH(c)) print *,'err4'
if(ATANH((0.76159416_8,0.0_8)**1)/=ATANH(cd)) print *,'err5'
if(dcmplx(ATANH((0.76159416_16,0.0_16)**1))/=dcmplx(ATANH(cq))) print *,'err6'
if(ATANH(r4)/=1.0_4) print *,'err7'
end subroutine
subroutine s2
real(4)::r4
real(8)::r8
real(16)::r16
complex(4)::c
complex(8)::cd
complex(16)::cq

r4=0.76159416_4
r8=0.76159416_8
r16=0.76159416_16
c=(0.76159416_4,0.0_4)
cd=(0.76159416_8,0.0_8)
cq=(0.76159416_16,0.0_16)

if(ATANH(x=0.76159416_4)/=ATANH(X=r4**1)) print *,'err11'
if(ATANH(x=0.76159416_8)/=ATANH(X=r8**1)) print *,'err12'
if(ATANH(x=0.76159416_16)/=ATANH(X=r16**1)) print *,'err13'
if(ATANH(x=(0.76159416_4,0.0_4))/=ATANH(X=c**1)) print *,'err14'
if(ATANH(x=(0.76159416_8,0.0_8))/=ATANH(X=cd**1)) print *,'err15'
if(dcmplx(ATANH(x=(0.76159416_16,0.0_16)))/=dcmplx(ATANH(X=cq**1))) print *,'err16'
if(ATANH(x=r4)/=1.0_4) print *,'err17'
end subroutine
subroutine s3
real(4)::r4(1)
real(8)::r8(1)
real(16)::r16(1)
complex(4)::c(1)
complex(8)::cd(1)
complex(16)::cq(1)

r4=0.76159416_4
r8=0.76159416_8
r16=0.76159416_16
c=(0.76159416_4,0.0_4)
cd=(0.76159416_8,0.0_8)
cq=(0.76159416_16,0.0_16)

if(any(ATANH([0.76159416_4])/=ATANH(r4))) print *,'err21'
if(any(ATANH([0.76159416_8])/=ATANH(r8))) print *,'err22'
if(any(ATANH(x=[0.76159416_16])/=ATANH(X=r16))) print *,'err23'
if(any(ATANH(x=[(0.76159416_4,0.0_4)])/=ATANH(X=c))) print *,'err24'
if(any(ATANH(x=[(0.76159416_8,0.0_8)])/=ATANH(X=cd))) print *,'err25'
if(any(dcmplx(ATANH(x=[(0.76159416_16,0.0_16)]))/=dcmplx(ATANH(X=cq)))) print *,'err26'
if(any(ATANH(r4)/=[1.0_4])) print *,'err27'
end subroutine
end
