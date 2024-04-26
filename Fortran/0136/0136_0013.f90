call aaa
call bbb
call ccc
call ddd
print *,'pass'
contains
subroutine aaa
real(4)::r
real(8)::d
integer(1)::i1,i2,i3,i4,i5
i1=-1_1
i2=-2_1
i3=-3_1
i4=-4_1
i5=-5_1

r=1.2345678
d=1.234567887654321
if(r**(-1_1)/=r**i1) print *,'err1'
if(r**(-2_1)/=r**i2) print *,'err2'
if(r**(-3_1)/=r**i3) print *,'err3'
if(r**(-4_1)/=r**i4) print *,'err4'
if(r**(-5_1)/=r**i5) print *,'err5'
if(d**(-1_1)/=d**i1) print *,'err6'
if(d**(-2_1)/=d**i2) print *,'err7'
if(d**(-3_1)/=d**i3) print *,'err8'
if(d**(-4_1)/=d**i4) print *,'err9'
if(d**(-5_1)/=d**i5) print *,'err10'
end subroutine
subroutine bbb
real(4)::r
real(8)::d
integer(2)::i1,i2,i3,i4,i5
i1=-1_2
i2=-2_2
i3=-3_2
i4=-4_2
i5=-5_2
r=1.2345678
d=1.234567887654321
if(r**(-1_2)/=r**i1) print *,'err11'
if(r**(-2_2)/=r**i2) print *,'err12'
if(r**(-3_2)/=r**i3) print *,'err13'
if(r**(-4_2)/=r**i4) print *,'err14'
if(r**(-5_2)/=r**i5) print *,'err15'
if(d**(-1_2)/=d**i1) print *,'err16'
if(d**(-2_2)/=d**i2) print *,'err17'
if(d**(-3_2)/=d**i3) print *,'err18'
if(d**(-4_2)/=d**i4) print *,'err19'
if(d**(-5_2)/=d**i5) print *,'err20'
end subroutine
subroutine ccc
real(4)::r
real(8)::d
integer(4)::i1,i2,i3,i4,i5
i1=-1
i2=-2
i3=-3
i4=-4
i5=-5
r=1.2345678
d=1.234567887654321
if(r**(-1_4)/=r**i1) print *,'err21'
if(r**(-2_4)/=r**i2) print *,'err22'
if(r**(-3_4)/=r**i3) print *,'err23'
if(r**(-4_4)/=r**i4) print *,'err24'
if(r**(-5_4)/=r**i5) print *,'err25'
if(d**(-1_4)/=d**i1) print *,'err26'
if(d**(-2_4)/=d**i2) print *,'err27'
if(d**(-3_4)/=d**i3) print *,'err28'
if(d**(-4_4)/=d**i4) print *,'err29'
if(d**(-5_4)/=d**i5) print *,'err30'
end subroutine
subroutine ddd
real(4)::r
real(8)::d
integer(8)::i1,i2,i3,i4,i5
i1=-1_8
i2=-2_8
i3=-3_8
i4=-4_8
i5=-5_8
r=1.2345678
d=1.234567887654321
if(r**(-1_8)/=r**i1) print *,'err31'
if(r**(-2_8)/=r**i2) print *,'err32',r**(-2_8),r**i2
if(r**(-3_8)/=r**i3) print *,'err33'
if(r**(-4_8)/=r**i4) print *,'err34'
if(r**(-5_8)/=r**i5) print *,'err35'
if(d**(-1_8)/=d**i1) print *,'err36'
if(d**(-2_8)/=d**i2) print *,'err37'
if(d**(-3_8)/=d**i3) print *,'err38'
if(d**(-4_8)/=d**i4) print *,'err39'
if(d**(-5_8)/=d**i5) print *,'err40',d**(-5_8),d**i5
end subroutine


end
