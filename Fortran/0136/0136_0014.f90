module m
integer(1),parameter::i11=1_1
integer(1),parameter::i12=2_1
integer(1),parameter::i13=3_1
integer(1),parameter::i14=4_1
integer(1),parameter::i15=5_1

integer(2),parameter::i21=1_2
integer(2),parameter::i22=2_2
integer(2),parameter::i23=3_2
integer(2),parameter::i24=4_2
integer(2),parameter::i25=5_2

integer(4),parameter::i41=1_4
integer(4),parameter::i42=2_4
integer(4),parameter::i43=3_4
integer(4),parameter::i44=4_4
integer(4),parameter::i45=5_4

integer(8),parameter::i81=1_8
integer(8),parameter::i82=2_8
integer(8),parameter::i83=3_8
integer(8),parameter::i84=4_8
integer(8),parameter::i85=5_8
end module

use m
real(4)::r(10,10,10,10,10,10,10)
real(8)::d(10,10,10,10,10,10,10)
r=1.2345678
d=1.234567887654321

if(any(r**i11/=r)) print *,'err1'
if(any(r**i12/=r*r)) print *,'err2'
if(any(r**i13/=r*r*r)) print *,'err3'
if(any(r**i14/=r*r*r*r)) print *,'err4'
if(any(r**i15/=r*r*r*r*r)) print *,'err5'

if(any(r**i21/=r)) print *,'err6'
if(any(r**i22/=r*r)) print *,'err7'
if(any(r**i23/=r*r*r)) print *,'err8'
if(any(r**i24/=r*r*r*r)) print *,'err9'
if(any(r**i25/=r*r*r*r*r)) print *,'err10'

if(any(r**i41/=r)) print *,'err11'
if(any(r**i42/=r*r)) print *,'err12'
if(any(r**i43/=r*r*r)) print *,'err13'
if(any(r**i44/=r*r*r*r)) print *,'err14'
if(any(r**i45/=r*r*r*r*r)) print *,'err15'

if(any(r**i81/=r)) print *,'err16'
if(any(r**i82/=r*r)) print *,'err17'
if(any(r**i83/=r*r*r)) print *,'err18'
if(any(r**i84/=r*r*r*r)) print *,'err19'
if(any(r**i85/=r*r*r*r*r)) print *,'err20'

if(any(d**i11/=d)) print *,'err21'
if(any(d**i12/=d*d)) print *,'err22'
if(any(d**i13/=d*d*d)) print *,'err23'
if(any(d**i14/=d*d*d*d)) print *,'err24'
if(any(d**i15/=d*d*d*d*d)) print *,'err25'

if(any(d**i21/=d)) print *,'err26'
if(any(d**i22/=d*d)) print *,'err27'
if(any(d**i23/=d*d*d)) print *,'err28'
if(any(d**i24/=d*d*d*d)) print *,'err29'
if(any(d**i25/=d*d*d*d*d)) print *,'err30'

if(any(d**i41/=d)) print *,'err31'
if(any(d**i42/=d*d)) print *,'err32'
if(any(d**i43/=d*d*d)) print *,'err33'
if(any(d**i44/=d*d*d*d)) print *,'err34'
if(any(d**i45/=d*d*d*d*d)) print *,'err35'

if(any(d**i81/=d)) print *,'err36'
if(any(d**i82/=d*d)) print *,'err37'
if(any(d**i83/=d*d*d)) print *,'err38'
if(any(d**i84/=d*d*d*d)) print *,'err39'
if(any(d**i85/=d*d*d*d*d)) print *,'err40'

print *,'pass'
end
