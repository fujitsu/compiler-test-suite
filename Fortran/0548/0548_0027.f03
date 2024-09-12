#define EQUAL_CHECK_WITH_MARGIN_REAL16(a, b) ((abs(a - b)/abs(a)) .gt. 1.0D-16)
#define EQUAL_CHECK_WITH_MARGIN(a, b) ((abs(real(a) - real(b))/abs(real(a))) .gt. 1.0D-5 .or. (abs(imag(a) - imag(b))/abs(imag(a))) .gt. 1.0D-5)
#define EQUAL_CHECK(a, b) ((abs(real(a) - real(b))/abs(real(a))) .gt. 1.0D-13 .or. (abs(imag(a) - imag(b))/abs(imag(a))) .gt. 1.0D-13)
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
if(asinh(sinh(1.0))/=1.0) print *,'err1'
if(asinh(sinh(1.0_8))/=1.0_8) print *,'err2'
if(EQUAL_CHECK_WITH_MARGIN_REAL16(1.0_16,asinh(sinh(1.0_16)))) print *,'err3'
if(EQUAL_CHECK_WITH_MARGIN((1.0,0.0),asinh(sinh((1.0,0.0))))) print *,'err4'
if(asinh(sinh((1.0_8,0.0_8)))/=(1.0_8,0.0_8)) print *,'err5'
if(asinh(sinh((1.0_16,0.0_16)))/=(1.0_16,0.0_16)) print *,'err6'
if(asinh(sinh(r))/=r) print *,'err11'
if(asinh(sinh(d))/=d) print *,'err12'
if(EQUAL_CHECK_WITH_MARGIN_REAL16(q,asinh(sinh(q)))) print *,'err13'
if(EQUAL_CHECK_WITH_MARGIN(c,asinh(sinh(c)))) print *,'err14'
if(asinh(sinh(cd))/=cd) print *,'err15'
if(asinh(sinh(cq))/=cq) print *,'err16'
if(asinh(x=sinh(r))/=r) print *,'err111'
if(asinh(x=sinh(d))/=d) print *,'err112'
if(EQUAL_CHECK_WITH_MARGIN_REAL16(q,asinh(x=sinh(q)))) print *,'err113'
if(EQUAL_CHECK_WITH_MARGIN(c,asinh(x=sinh(c)))) print *,'err114'
if(asinh(x=sinh(cd))/=cd) print *,'err115'
if(asinh(x=sinh(cq))/=cq) print *,'err116'
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
if(any(asinh(sinh([1.0]))/=[1.0])) print *,'err1'
if(any(asinh(sinh([1.0_8]))/=[1.0_8])) print *,'err2'
if(EQUAL_CHECK_WITH_MARGIN_REAL16(1.0_16,asinh(sinh(1.0_16)))) print *,'err3'
if(EQUAL_CHECK_WITH_MARGIN((1.0,0.0),asinh(sinh((1.0,0.0))))) print *,'err4'
if(any(asinh(sinh([(1.0_8,0.0_8)]))/=[(1.0_8,0.0_8)])) print *,'err5'
if(any(asinh(sinh([(1.0_16,0.0_16)]))/=[(1.0_16,0.0_16)])) print *,'err6'
if(any(asinh(sinh(r))/=r)) print *,'err11'
if(any(asinh(sinh(d))/=d)) print *,'err12'
if(EQUAL_CHECK_WITH_MARGIN_REAL16(q(1),asinh(sinh(q(1))))) print *,'err13'
if(EQUAL_CHECK_WITH_MARGIN_REAL16(q(2),asinh(sinh(q(2))))) print *,'err13'
if(EQUAL_CHECK_WITH_MARGIN(c(1),asinh(sinh(c(1))))) print *,'err14'
if(EQUAL_CHECK_WITH_MARGIN(c(2),asinh(sinh(c(2))))) print *,'err14'
if(any(asinh(sinh(cd))/=cd)) print *,'err15'
if(any(asinh(sinh(cq))/=cq)) print *,'err16'
if(any(asinh(x=sinh(r))/=r)) print *,'err111'
if(any(asinh(x=sinh(d))/=d)) print *,'err112'
if(EQUAL_CHECK_WITH_MARGIN_REAL16(q(1),asinh(x=sinh(q(1))))) print *,'err113'
if(EQUAL_CHECK_WITH_MARGIN_REAL16(q(2),asinh(x=sinh(q(2))))) print *,'err113'
if(EQUAL_CHECK_WITH_MARGIN(c(1),asinh(x=sinh(c(1))))) print *,'err114'
if(EQUAL_CHECK_WITH_MARGIN(c(2),asinh(x=sinh(c(2))))) print *,'err114'
if(any(asinh(x=sinh(x=cd))/=cd)) print *,'err115'
if(any(asinh(x=sinh(x=cq))/=cq)) print *,'err116'
end
