#define EQUAL_CHECK_WITH_MARGIN_REAL16(a, b) ((abs(a - b)/abs(a)) .gt. 1.0D-30)
call s1
call s2
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
if(abs(1.0-abs(asin(sin(1.0))))<0.00000001) print *,'err1'
if(asin(sin(1.0_8))/=1.0_8) print *,'err2'
if(1.0_16-abs(asin(sin(1.0_16)))>=0.0000000000000000000000000000000001) print *,'err3'
if(1.0-abs(asin(sin((1.0,0.0))))<0.00000001) print *,'err4'
if(asin(sin((1.0_8,0.0_8)))/=(1.0_8,0.0_8)) print *,'err5'
if(asin(sin((1.0_16,0.0_16)))/=(1.0_16,0.0_16)) print *,'err6'
if(abs(1.0-abs(asin(sin(r))))<0.00000001) print *,'err11'
if(asin(sin(d))/=d) print *,'err12'
if(EQUAL_CHECK_WITH_MARGIN_REAL16(q, asin(sin(q)))) print *,'err13'
if(1.0-abs(asin(sin(c)))<0.00000001) print *,'err14'
if(asin(sin(cd))/=cd) print *,'err15'
if(asin(sin(cq))/=cq) print *,'err16'
if(abs(1.0-abs(asin(x=sin(r))))<0.00000001) print *,'err111'
if(asin(x=sin(d))/=d) print *,'err112'
if(EQUAL_CHECK_WITH_MARGIN_REAL16(q, asin(x=sin(q)))) print *,'err113'
if(1.0-abs(asin(x=sin(c)))<0.00000001) print *,'err114'
if(asin(x=sin(cd))/=cd) print *,'err115'
if(asin(x=sin(cq))/=cq) print *,'err116'
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
if(any(abs([1.0]-abs(asin(sin([1.0]))))<[0.00000001])) print *,'err1'
if(any(asin(sin([1.0_8]))/=[1.0_8])) print *,'err2'
if(EQUAL_CHECK_WITH_MARGIN_REAL16(1.0_16,asin(sin(1.0_16)))) print *,'err3'
if(any([1.0]-abs(asin(sin([(1.0,0.0)])))<[0.00000001])) print *,'err4'
if(any(asin(sin([(1.0_8,0.0_8)]))/=[(1.0_8,0.0_8)])) print *,'err5'
if(any(asin(sin([(1.0_16,0.0_16)]))/=[(1.0_16,0.0_16)])) print *,'err6'
if(any(abs([1.0,1.0]-abs(asin(sin(r))))<0.00000001)) print *,'err11'
if(any(asin(sin(d))/=d)) print *,'err12'
if(EQUAL_CHECK_WITH_MARGIN_REAL16(q(1),asin(sin(q(1))))) print *,'err13'
if(EQUAL_CHECK_WITH_MARGIN_REAL16(q(2),asin(sin(q(2))))) print *,'err13'
if(any([1.0,1.0]-abs(asin(sin(c)))<0.00000001)) print *,'err14'
if(any(asin(sin(cd))/=cd)) print *,'err15'
if(any(asin(sin(cq))/=cq)) print *,'err16'
if(any(abs([1.0,1.0]-abs(asin(x=sin(r))))<0.00000001)) print *,'err111'
if(any(asin(x=sin(d))/=d)) print *,'err112'
if(EQUAL_CHECK_WITH_MARGIN_REAL16(q(1),asin(x=sin(q(1))))) print *,'err113'
if(EQUAL_CHECK_WITH_MARGIN_REAL16(q(2),asin(x=sin(q(2))))) print *,'err113'
if(any([1.0,1.0]-abs(asin(x=sin(x=c)))<0.00000001)) print *,'err114'
if(any(asin(x=sin(x=cd))/=cd)) print *,'err115'
if(any(asin(x=sin(x=cq))/=cq)) print *,'err116'
end
