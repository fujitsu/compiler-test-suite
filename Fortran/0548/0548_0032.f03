#define EQUAL_CHECK_WITH_MARGIN_REAL(a, b) ((abs(a - b)/abs(a)) .gt. 1.0D-5)
#define EQUAL_CHECK_WITH_MARGIN_REAL8(a, b) ((abs(a - b)/abs(a)) .gt. 1.0D-15)
#define EQUAL_CHECK_WITH_MARGIN_REAL16(a, b) ((abs(a - b)/abs(a)) .gt. 1.0D-30)
call s1
call s2
call s3
print *,'pass'
end
subroutine s1
real(4)::r
real(8)::d
real(16)::q
complex(4)::c
complex(8)::cd
complex(16)::cq
r=1.0_4
d=1.0_8
q=1.0_16
c=(1.0_4,0.0_4)
cd=(1.0_8,0.0_8)
cq=(1.0_16,0.0_16)
if(atan(tan(1.0))/=1.0) print *,'err1'
if(atan(tan(1.0_8))/=1.0_8) print *,'err2'
if(atan(tan(1.0_16))/=1.0_16) print *,'err3'
if(atan(tan((1.0,0.0)))/=(1.0,0.0)) print *,'err4'
if(EQUAL_CHECK_WITH_MARGIN_REAL8((1.0_8,0.0_8),atan(tan((1.0_8,0.0_8))))) print *,'err5' 
if(EQUAL_CHECK_WITH_MARGIN_REAL16((1.0_16,0.0_16),atan(tan((1.0_16,0.0_16))))) print *,'err6' 
if(atan(tan(r))/=r) print *,'err11'
if(atan(tan(d))/=d) print *,'err12'
if(atan(tan(q))/=q) print *,'err13'
if(atan(tan(c))/=c) print *,'err14'
if(EQUAL_CHECK_WITH_MARGIN_REAL8(cd,atan(tan(cd))))  print *,'err15' 
if(EQUAL_CHECK_WITH_MARGIN_REAL16(cq,atan(tan(cq)))) print *,'err16'
if(atan(x=tan(r))/=r) print *,'err111'
if(atan(x=tan(d))/=d) print *,'err112'
if(atan(x=tan(q))/=q) print *,'err113'
if(atan(x=tan(c))/=c) print *,'err114'
if(EQUAL_CHECK_WITH_MARGIN_REAL8(cd,atan(x=tan(cd))))  print *,'err115'
if(EQUAL_CHECK_WITH_MARGIN_REAL16(cq,atan(x=tan(cq)))) print *,'err116'
end

subroutine s2
real(4)::r(2)
real(8)::d(2)
real(16)::q(2)
complex(4)::c(2)
complex(8)::cd(2)
complex(16)::cq(2)
r=1.0_4
d=1.0_8
q=1.0_16
c=(1.0_4,0.0_4)
cd=(1.0_8,0.0_8)
cq=(1.0_16,0.0_16)
if(any(atan(tan([1.0]))/=[1.0])) print *,'err1'
if(any(atan(tan([1.0_8]))/=[1.0_8])) print *,'err2'
if(any(atan(tan([1.0_16]))/=[1.0_16])) print *,'err3'
if(any(atan(tan([(1.0,0.0)]))/=[(1.0,0.0)])) print *,'err4'
if(EQUAL_CHECK_WITH_MARGIN_REAL8((1.0_8,0.0_8),atan(tan((1.0_8,0.0_8)))))  print *,'err5'
if(EQUAL_CHECK_WITH_MARGIN_REAL16((1.0_16,0.0_16),atan(tan((1.0_16,0.0_16)))))  print *,'err6'
if(any(atan(tan(r))/=r)) print *,'err11'
if(any(atan(tan(d))/=d)) print *,'err12'
if(any(atan(tan(q))/=q)) print *,'err13'
if(any(atan(tan(c))/=c)) print *,'err14'
if(EQUAL_CHECK_WITH_MARGIN_REAL8(cd(1),atan(tan(cd(1)))))  print *,'err151'
if(EQUAL_CHECK_WITH_MARGIN_REAL8(cd(2),atan(tan(cd(2)))))  print *,'err152'
if(EQUAL_CHECK_WITH_MARGIN_REAL16(cq(1),atan(tan(cq(1))))) print *,'err161'
if(EQUAL_CHECK_WITH_MARGIN_REAL16(cq(2),atan(tan(cq(2))))) print *,'err162'
if(any(atan(x=tan(r))/=r)) print *,'err111'
if(any(atan(x=tan(d))/=d)) print *,'err112'
if(any(atan(x=tan(q))/=q)) print *,'err113'
if(any(atan(x=tan(x=c))/=c)) print *,'err114'
if(EQUAL_CHECK_WITH_MARGIN_REAL8(cd(1),atan(x=tan(x=cd(1))))) print *,'err1151'
if(EQUAL_CHECK_WITH_MARGIN_REAL8(cd(2),atan(x=tan(x=cd(2))))) print *,'err1152'
if(EQUAL_CHECK_WITH_MARGIN_REAL16(cq(1),atan(x=tan(x=cq(1))))) print *,'err1161'
if(EQUAL_CHECK_WITH_MARGIN_REAL16(cq(2),atan(x=tan(x=cq(2))))) print *,'err1162'
end

subroutine s3
real(4)::r(2)
real(8)::d(2)
real(16)::q(2)
complex(4)::c(2)
complex(8)::cd(2)
complex(16)::cq(2)
r=1.0_4
d=1.0_8
q=1.0_16
c=(1.0_4,1.0_4)
cd=(1.0_8,1.0_8)
cq=(1.0_16,1.0_16)
if(any(atan(tan([1.0]))/=[1.0])) print *,'err1'
if(any(atan(tan([1.0_8]))/=[1.0_8])) print *,'err2'
if(any(atan(tan([1.0_16]))/=[1.0_16])) print *,'err3'
if(EQUAL_CHECK_WITH_MARGIN_REAL((1.0,1.0),atan(tan((1.0,1.0))))) print *,'err4'
if(EQUAL_CHECK_WITH_MARGIN_REAL8((1.0_8,1.0_8),atan(tan((1.0_8,1.0_8))))) print *,'err5'
if(any(atan(tan(r))/=r)) print *,'err11'
if(any(atan(tan(d))/=d)) print *,'err12'
if(any(atan(tan(q))/=q)) print *,'err13'
if(EQUAL_CHECK_WITH_MARGIN_REAL(c(1),atan(tan(c(1))))) print *,'err141'
if(EQUAL_CHECK_WITH_MARGIN_REAL(c(2),atan(tan(c(2))))) print *,'err142'
if(EQUAL_CHECK_WITH_MARGIN_REAL8(cd(1),atan(tan(cd(1))))) print *,'err151'
if(EQUAL_CHECK_WITH_MARGIN_REAL8(cd(2),atan(tan(cd(2))))) print *,'err152'
if(EQUAL_CHECK_WITH_MARGIN_REAL16(cq(1),atan(tan(cq(1))))) print *,'err161'
if(EQUAL_CHECK_WITH_MARGIN_REAL16(cq(2),atan(tan(cq(2))))) print *,'err162'
if(any(atan(x=tan(r))/=r)) print *,'err111'
if(any(atan(x=tan(d))/=d)) print *,'err112'
if(any(atan(x=tan(q))/=q)) print *,'err113'
if(EQUAL_CHECK_WITH_MARGIN_REAL(c(1),atan(x=tan(x=c(1))))) print *,'err1141'
if(EQUAL_CHECK_WITH_MARGIN_REAL(c(2),atan(x=tan(x=c(2))))) print *,'err1142'
if(EQUAL_CHECK_WITH_MARGIN_REAL8(cd(1),atan(x=tan(x=cd(1))))) print *,'err1151'
if(EQUAL_CHECK_WITH_MARGIN_REAL8(cd(2),atan(x=tan(x=cd(2))))) print *,'err1152'
if(EQUAL_CHECK_WITH_MARGIN_REAL16(cq(1),atan(x=tan(x=cq(1))))) print *,'err1161'
if(EQUAL_CHECK_WITH_MARGIN_REAL16(cq(2),atan(x=tan(x=cq(2))))) print *,'err1162'
end
