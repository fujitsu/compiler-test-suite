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
if(any(r**(-1_1)/=1/r**1_1)) print *,'err1'
if(any(r**(-2_1)/=1/r**2_1)) print *,'err2'
if(any(r**(-3_1)/=1/r**3_1)) print *,'err3'
if(any(r**(-4_1)/=1/r**4_1)) print *,'err4'
if(any(r**(-5_1)/=1/r**5_1)) print *,'err5'
if(any(d**(-1_1)/=1/d**1_1)) print *,'err6'
if(any(d**(-2_1)/=1/d**2_1)) print *,'err7'
if(any(d**(-3_1)/=1/d**3_1)) print *,'err8'
if(any(d**(-4_1)/=1/d**4_1)) print *,'err9'
if(any(d**(-5_1)/=1/d**5_1)) print *,'err10'
end subroutine
subroutine bbb
real(4)::r(100)
real(8)::d(100)
r=1.2345678
d=1.234567887654321
if(any(r**(-1_2)/=1/r**1_2)) print *,'err11'
if(any(r**(-2_2)/=1/r**2_2)) print *,'err12'
if(any(r**(-3_2)/=1/r**3_2)) print *,'err13'
if(any(r**(-4_2)/=1/r**4_2)) print *,'err14'
if(any(r**(-5_2)/=1/r**5_2)) print *,'err15'
if(any(d**(-1_2)/=1/d**1_2)) print *,'err16'
if(any(d**(-2_2)/=1/d**2_2)) print *,'err17'
if(any(d**(-3_2)/=1/d**3_2)) print *,'err18'
if(any(d**(-4_2)/=1/d**4_2)) print *,'err19'
if(any(d**(-5_2)/=1/d**5_2)) print *,'err20'
end subroutine
subroutine ccc
real(4)::r(100)
real(8)::d(100)
r=1.2345678
d=1.234567887654321
if(any(r**(-1_4)/=1/r**1)) print *,'err21'
if(any(r**(-2_4)/=1/r**2)) print *,'err22'
if(any(r**(-3_4)/=1/r**3)) print *,'err23'
if(any(r**(-4_4)/=1/r**4)) print *,'err24'
if(any(r**(-5_4)/=1/r**5)) print *,'err25'
if(any(d**(-1_4)/=1/d**1)) print *,'err26'
if(any(d**(-2_4)/=1/d**2)) print *,'err27'
if(any(d**(-3_4)/=1/d**3)) print *,'err28'
if(any(d**(-4_4)/=1/d**4)) print *,'err29'
if(any(d**(-5_4)/=1/d**5)) print *,'err30'
end subroutine
subroutine ddd
real(4)::r(100)
real(8)::d(100)
r=1.2345678
d=1.234567887654321
if(any(r**(-1_8)/=1/r**1_8)) print *,'err31'
if(any(anint(r**(-2_8))/=anint(1/r**2_8))) print *,'err32'
if(any(anint(r**(-3_8))/=anint(1/r**3_8))) print *,'err33'
if(any(anint(r**(-4_8))/=anint(1/r**4_8))) print *,'err34'
if(any(anint(r**(-5_8))/=anint(1/r**5_8))) print *,'err35'
if(any(d**(-1_8)/=1/d**1_8)) print *,'err36'
if(any(anint(d**(-2_8))/=anint(1/d**2_8))) print *,'err37'
if(any(anint(d**(-3_8))/=anint(1/d**3_8))) print *,'err38'
if(any(anint(d**(-4_8))/=anint(1/d**4_8))) print *,'err39'
if(any(anint(d**(-5_8))/=anint(1/d**5_8))) print *,'err40'
end subroutine


end
