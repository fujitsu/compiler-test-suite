#define EQUAL_CHECK_WITH_MARGIN_R(a, b) (a .ne. b .and. (abs(a - b)/abs(a)) .gt. 1.0D-6)
#define EQUAL_CHECK_WITH_MARGIN_D(a, b) (a .ne. b .and. (abs(a - b)/abs(a)) .gt. 1.0D-15)
call aaa
call bbb
call ccc
call ddd
print *,'pass'
contains
subroutine aaa
real(4)::r
real(8)::d
r=1.2345678
d=1.234567887654321
if(EQUAL_CHECK_WITH_MARGIN_R(r**(-1_1),1/r**1_1)) print *,'err1'
if(EQUAL_CHECK_WITH_MARGIN_R(r**(-2_1),1/r**2_1)) print *,'err2'
if(EQUAL_CHECK_WITH_MARGIN_R(r**(-3_1),1/r**3_1)) print *,'err3'
if(EQUAL_CHECK_WITH_MARGIN_R(r**(-4_1),1/r**4_1)) print *,'err4'
if(EQUAL_CHECK_WITH_MARGIN_R(r**(-5_1),1/r**5_1)) print *,'err5'
if(EQUAL_CHECK_WITH_MARGIN_D(d**(-1_1),1/d**1_1)) print *,'err6'
if(EQUAL_CHECK_WITH_MARGIN_D(d**(-2_1),1/d**2_1)) print *,'err7'
if(EQUAL_CHECK_WITH_MARGIN_D(d**(-3_1),1/d**3_1)) print *,'err8'
if(EQUAL_CHECK_WITH_MARGIN_D(d**(-4_1),1/d**4_1)) print *,'err9'
if(EQUAL_CHECK_WITH_MARGIN_D(d**(-5_1),1/d**5_1)) print *,'err10'
end subroutine
subroutine bbb
real(4)::r
real(8)::d
r=1.2345678
d=1.234567887654321
if(EQUAL_CHECK_WITH_MARGIN_R(r**(-1_2),1/r**1_2)) print *,'err11'
if(EQUAL_CHECK_WITH_MARGIN_R(r**(-2_2),1/r**2_2)) print *,'err12'
if(EQUAL_CHECK_WITH_MARGIN_R(r**(-3_2),1/r**3_2)) print *,'err13'
if(EQUAL_CHECK_WITH_MARGIN_R(r**(-4_2),1/r**4_2)) print *,'err14'
if(EQUAL_CHECK_WITH_MARGIN_R(r**(-5_2),1/r**5_2)) print *,'err15'
if(EQUAL_CHECK_WITH_MARGIN_D(d**(-1_2),1/d**1_2)) print *,'err16'
if(EQUAL_CHECK_WITH_MARGIN_D(d**(-2_2),1/d**2_2)) print *,'err17'
if(EQUAL_CHECK_WITH_MARGIN_D(d**(-3_2),1/d**3_2)) print *,'err18'
if(EQUAL_CHECK_WITH_MARGIN_D(d**(-4_2),1/d**4_2)) print *,'err19'
if(EQUAL_CHECK_WITH_MARGIN_D(d**(-5_2),1/d**5_2)) print *,'err20'
end subroutine
subroutine ccc
real(4)::r
real(8)::d
r=1.2345678
d=1.234567887654321
if(EQUAL_CHECK_WITH_MARGIN_R(r**(-1_4),1/r**1)) print *,'err21'
if(EQUAL_CHECK_WITH_MARGIN_R(r**(-2_4),1/r**2)) print *,'err22'
if(EQUAL_CHECK_WITH_MARGIN_R(r**(-3_4),1/r**3)) print *,'err23'
if(EQUAL_CHECK_WITH_MARGIN_R(r**(-4_4),1/r**4)) print *,'err24'
if(EQUAL_CHECK_WITH_MARGIN_R(r**(-5_4),1/r**5)) print *,'err25'
if(EQUAL_CHECK_WITH_MARGIN_D(d**(-1_4),1/d**1)) print *,'err26'
if(EQUAL_CHECK_WITH_MARGIN_D(d**(-2_4),1/d**2)) print *,'err27'
if(EQUAL_CHECK_WITH_MARGIN_D(d**(-3_4),1/d**3)) print *,'err28'
if(EQUAL_CHECK_WITH_MARGIN_D(d**(-4_4),1/d**4)) print *,'err29'
if(EQUAL_CHECK_WITH_MARGIN_D(d**(-5_4),1/d**5)) print *,'err30'
end subroutine
subroutine ddd
real(4)::r
real(8)::d
r=1.2345678
d=1.234567887654321
if(EQUAL_CHECK_WITH_MARGIN_R(r**(-1_8),1/r**1_8)) print *,'err31'
if(EQUAL_CHECK_WITH_MARGIN_R(anint(r**(-2_8)),anint(1/r**2_8))) print *,'err32'
if(EQUAL_CHECK_WITH_MARGIN_R(anint(r**(-3_8)),anint(1/r**3_8))) print *,'err33'
if(EQUAL_CHECK_WITH_MARGIN_R(anint(r**(-4_8)),anint(1/r**4_8))) print *,'err34'
if(EQUAL_CHECK_WITH_MARGIN_R(anint(r**(-5_8)),anint(1/r**5_8))) print *,'err35'
if(EQUAL_CHECK_WITH_MARGIN_D(d**(-1_8),1/d**1_8)) print *,'err36'
if(EQUAL_CHECK_WITH_MARGIN_D(anint(d**(-2_8)),anint(1/d**2_8))) print *,'err37'
if(EQUAL_CHECK_WITH_MARGIN_D(anint(d**(-3_8)),anint(1/d**3_8))) print *,'err38'
if(EQUAL_CHECK_WITH_MARGIN_D(anint(d**(-4_8)),anint(1/d**4_8))) print *,'err39'
if(EQUAL_CHECK_WITH_MARGIN_D(anint(d**(-5_8)),anint(1/d**5_8))) print *,'err40'
end subroutine


end
