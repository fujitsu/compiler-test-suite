call sub01()
print *,'pass'
end

subroutine sub01()
integer,dimension(1,2,3,4,1,1,1) :: a01,a02,a03,a04,a05
integer,dimension(3,1,3,4,1,1) :: b01,b02,b03,b04,b05
integer,dimension(3,1,1,2,2) :: c01,c02,c03,c04,c05
integer,dimension(1,2,3,4,1,1,1,1) :: aaa
integer,dimension(3,1,3,4,1,1,1) :: bbb
integer,dimension(3,1,1,2,2,1) :: ccc
a01=1;a02=2;a03=3;a04=4;a05=5
a01=100
a02=200
a03=300
a04=400
a05=500
if (any(a01.ne.100)) print *,'err1a'
if (any(a02.ne.200)) print *,'err2a'
if (any(a03.ne.300)) print *,'err3a'
if (any(a04.ne.400)) print *,'err4a'
if (any(a05.ne.500)) print *,'err5a'
b01=1;b02=2;b03=3;b04=4;b05=5
b01=110
b02=210
b03=310
b04=410
b05=510
if (any(b01.ne.110)) print *,'err1b'
if (any(b02.ne.210)) print *,'err2b'
if (any(b03.ne.310)) print *,'err3b'
if (any(b04.ne.410)) print *,'err4b'
if (any(b05.ne.510)) print *,'err5b'
c01=1;c02=2;c03=3;c04=4;c05=5
c01=120
c02=220
c03=320
c04=420
c05=520
if (any(c01.ne.120)) print *,'err1c'
if (any(c02.ne.220)) print *,'err2c'
if (any(c03.ne.320)) print *,'err3c'
if (any(c04.ne.420)) print *,'err4c'
if (any(c05.ne.520)) print *,'err5c'
end
