#define EQUAL_CHECK_WITH_MARGIN_R(a, b) (a .ne. b .and. (abs(a - b)/abs(a)) .gt. 1.0D-6)
#define EQUAL_CHECK_WITH_MARGIN_D(a, b) (a .ne. b .and. (abs(a - b)/abs(a)) .gt. 1.0D-15)

real(4),parameter::t_r1(10000)=1.2345678_4**1
real(4),parameter::t_r2(10000)=1.2345678_4**2
real(4),parameter::t_r3(10000)=1.2345678_4**3
real(4),parameter::t_r4(10000)=1.2345678_4**4
real(4),parameter::t_r5(10000)=1.2345678_4**5

real(8),parameter::t_d1(10000)=1.234567887654321_8**1
real(8),parameter::t_d2(10000)=1.234567887654321_8**2
real(8),parameter::t_d3(10000)=1.234567887654321_8**3
real(8),parameter::t_d4(10000)=1.234567887654321_8**4
real(8),parameter::t_d5(10000)=1.234567887654321_8**5

real(4)::r(10000)
real(8)::d(10000)
r=1.2345678_4
d=1.234567887654321_8

do ii=1,10000
if(EQUAL_CHECK_WITH_MARGIN_R(r(ii)**1,t_r1(ii))) print *,'err1'
if(EQUAL_CHECK_WITH_MARGIN_R(r(ii)**2,t_r2(ii))) print *,'err2'
if(EQUAL_CHECK_WITH_MARGIN_R(r(ii)**3,t_r3(ii))) print *,'err3'
if(EQUAL_CHECK_WITH_MARGIN_R(r(ii)**4,t_r4(ii))) print *,'err4'
if(EQUAL_CHECK_WITH_MARGIN_R(r(ii)**5,t_r5(ii))) print *,'err5'

if(EQUAL_CHECK_WITH_MARGIN_D(d(ii)**1,t_d1(ii))) print *,'err1'
if(EQUAL_CHECK_WITH_MARGIN_D(d(ii)**2,t_d2(ii))) print *,'err2'
if(EQUAL_CHECK_WITH_MARGIN_D(d(ii)**3,t_d3(ii))) print *,'err3'
if(EQUAL_CHECK_WITH_MARGIN_D(d(ii)**4,t_d4(ii))) print *,'err4'
if(EQUAL_CHECK_WITH_MARGIN_D(d(ii)**5,t_d5(ii))) print *,'err5'
enddo
print *,'pass'
end
