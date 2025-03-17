#define EQUAL_CHECK_WITH_MARGIN(a, b) ((abs(a - b)/abs(a)) .gt. 1.0D-5)
call aaa
call bbb
call ccc
call ddd
print *,'pass'
contains
subroutine aaa
real(4)::r(100)
real(8)::d(100)
r=1.2345678
d=1.234567887654321
if(any(r**1_1/=r)) print *,'err1'
if(any(r**2_1/=r*r)) print *,'err2'
if(any(EQUAL_CHECK_WITH_MARGIN(r**3_1,r*r*r))) print *,'err3'
if(any(r**4_1/=r*r*r*r)) print *,'err4'
if(any(EQUAL_CHECK_WITH_MARGIN(r**5_1,r*r*r*r*r))) print *,'err5'
if(any(d**1_1/=d)) print *,'err6'
if(any(d**2_1/=d*d)) print *,'err7'
if(any(d**3_1/=d*d*d)) print *,'err8'
if(any(d**4_1/=d*d*d*d)) print *,'err9'
if(any(d**5_1/=d*d*d*d*d)) print *,'err10'
end subroutine
subroutine bbb
real(4)::r(100)
real(8)::d(100)
r=1.2345678
d=1.234567887654321
if(any(r**1_2/=r)) print *,'err11'
if(any(r**2_2/=r*r)) print *,'err12'
if(any(EQUAL_CHECK_WITH_MARGIN(r**3_2,r*r*r))) print *,'err13'
if(any(r**4_2/=r*r*r*r)) print *,'err14'
if(any(EQUAL_CHECK_WITH_MARGIN(r**5_2,r*r*r*r*r))) print *,'err15'
if(any(d**1_2/=d)) print *,'err16'
if(any(d**2_2/=d*d)) print *,'err17'
if(any(d**3_2/=d*d*d)) print *,'err18'
if(any(d**4_2/=d*d*d*d)) print *,'err19'
if(any(d**5_2/=d*d*d*d*d)) print *,'err20'
end subroutine
subroutine ccc
real(4)::r(100)
real(8)::d(100)
r=1.2345678
d=1.234567887654321
if(any(r**1_4/=r)) print *,'err21'
if(any(r**2_4/=r*r)) print *,'err22'
if(any(r**3_4/=r*r*r)) print *,'err23'
if(any(r**4_4/=r*r*r*r)) print *,'err24'
if(any(EQUAL_CHECK_WITH_MARGIN(r**5_4,r*r*r*r*r))) print *,'err25'
if(any(d**1_4/=d)) print *,'err26'
if(any(d**2_4/=d*d)) print *,'err27'
if(any(d**3_4/=d*d*d)) print *,'err28'
if(any(d**4_4/=d*d*d*d)) print *,'err29'
if(any(d**5_4/=d*d*d*d*d)) print *,'err30'
end subroutine
subroutine ddd
real(4)::r(100)
real(8)::d(100)
r=1.2345678
d=1.234567887654321
if(any(r**1_8/=r)) print *,'err31'
if(any(r**2_8/=r*r)) print *,'err32'
if(any(r**3_8/=r*r*r)) print *,'err33'
if(any(r**4_8/=r*r*r*r)) print *,'err34'
if(any(r**5_8/=r*r*r*r*r)) print *,'err35'
if(any(d**1_8/=d)) print *,'err36'
if(any(d**2_8/=d*d)) print *,'err37'
if(any(d**3_8/=d*d*d)) print *,'err38'
if(any(d**4_8/=d*d*d*d)) print *,'err39'
if(any(d**5_8/=d*d*d*d*d)) print *,'err40'
end subroutine


end
