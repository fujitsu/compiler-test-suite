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
if(EQUAL_CHECK_WITH_MARGIN_R(r**1_1,r)) print *,'err1'
if(EQUAL_CHECK_WITH_MARGIN_R(r**2_1,r*r)) print *,'err2'
if(EQUAL_CHECK_WITH_MARGIN_R(r**3_1,r*r*r)) print *,'err3'
if(EQUAL_CHECK_WITH_MARGIN_R(r**4_1,r*r*r*r)) print *,'err4'
if(EQUAL_CHECK_WITH_MARGIN_R(r**5_1,r*r*r*r*r)) print *,'err5'
if(EQUAL_CHECK_WITH_MARGIN_D(d**1_1,d)) print *,'err6'
if(EQUAL_CHECK_WITH_MARGIN_D(d**2_1,d*d)) print *,'err7'
if(EQUAL_CHECK_WITH_MARGIN_D(d**3_1,d*d*d)) print *,'err8'
if(EQUAL_CHECK_WITH_MARGIN_D(d**4_1,d*d*d*d)) print *,'err9'
if(EQUAL_CHECK_WITH_MARGIN_D(d**5_1,d*d*d*d*d)) print *,'err10'
end subroutine
subroutine bbb
real(4)::r
real(8)::d
r=1.2345678
d=1.234567887654321
if(EQUAL_CHECK_WITH_MARGIN_R(r**1_2,r)) print *,'err11'
if(EQUAL_CHECK_WITH_MARGIN_R(r**2_2,r*r)) print *,'err12'
if(EQUAL_CHECK_WITH_MARGIN_R(r**3_2,r*r*r)) print *,'err13'
if(EQUAL_CHECK_WITH_MARGIN_R(r**4_2,r*r*r*r)) print *,'err14'
if(EQUAL_CHECK_WITH_MARGIN_R(r**5_2,r*r*r*r*r)) print *,'err15'
if(EQUAL_CHECK_WITH_MARGIN_D(d**1_2,d)) print *,'err16'
if(EQUAL_CHECK_WITH_MARGIN_D(d**2_2,d*d)) print *,'err17'
if(EQUAL_CHECK_WITH_MARGIN_D(d**3_2,d*d*d)) print *,'err18'
if(EQUAL_CHECK_WITH_MARGIN_D(d**4_2,d*d*d*d)) print *,'err19'
if(EQUAL_CHECK_WITH_MARGIN_D(d**5_2,d*d*d*d*d)) print *,'err20'
end subroutine
subroutine ccc
real(4)::r
real(8)::d
r=1.2345678
d=1.234567887654321
if(EQUAL_CHECK_WITH_MARGIN_R(r**1_4,r)) print *,'err21'
if(EQUAL_CHECK_WITH_MARGIN_R(r**2_4,r*r)) print *,'err22'
if(EQUAL_CHECK_WITH_MARGIN_R(r**3_4,r*r*r)) print *,'err23'
if(EQUAL_CHECK_WITH_MARGIN_R(r**4_4,r*r*r*r)) print *,'err24'
if(EQUAL_CHECK_WITH_MARGIN_R(r**5_4,r*r*r*r*r)) print *,'err25'
if(EQUAL_CHECK_WITH_MARGIN_D(d**1_4,d)) print *,'err26'
if(EQUAL_CHECK_WITH_MARGIN_D(d**2_4,d*d)) print *,'err27'
if(EQUAL_CHECK_WITH_MARGIN_D(d**3_4,d*d*d)) print *,'err28'
if(EQUAL_CHECK_WITH_MARGIN_D(d**4_4,d*d*d*d)) print *,'err29'
if(EQUAL_CHECK_WITH_MARGIN_D(d**5_4,d*d*d*d*d)) print *,'err30'
end subroutine
subroutine ddd
real(4)::r
real(8)::d
r=1.2345678
d=1.234567887654321
if(EQUAL_CHECK_WITH_MARGIN_R(r**1_8,r)) print *,'err31'
if(EQUAL_CHECK_WITH_MARGIN_R(r**2_8,r*r)) print *,'err32'
if(EQUAL_CHECK_WITH_MARGIN_R(r**3_8,r*r*r)) print *,'err33'
if(EQUAL_CHECK_WITH_MARGIN_R(r**4_8,r*r*r*r)) print *,'err34'
if(EQUAL_CHECK_WITH_MARGIN_R(r**5_8,r*r*r*r*r)) print *,'err35'
if(EQUAL_CHECK_WITH_MARGIN_D(d**1_8,d)) print *,'err36'
if(EQUAL_CHECK_WITH_MARGIN_D(d**2_8,d*d)) print *,'err37'
if(EQUAL_CHECK_WITH_MARGIN_D(d**3_8,d*d*d)) print *,'err38'
if(EQUAL_CHECK_WITH_MARGIN_D(d**4_8,d*d*d*d)) print *,'err39'
if(EQUAL_CHECK_WITH_MARGIN_D(d**5_8,d*d*d*d*d)) print *,'err40'
end subroutine


end
