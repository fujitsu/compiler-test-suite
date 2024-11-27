 integer,parameter::a01=1
 complex,parameter::b01=(2,3)
 character(len=3),parameter::c01='456'
 type tt
  integer::a11
  complex::b11
  character(len=3)::c11
 end type
 type(tt),parameter::d01=tt(11,(12,13),'789')
 integer,parameter,dimension(2)::a02=(/21,22/)
 complex,parameter,dimension(2)::b02=(/(23,24),(25,26)/)
 character(len=3),parameter,dimension(2)::c02=(/'789','abc'/)
 type(tt),parameter,dimension(2)::d02=(/tt(31,(32,33),'def'),tt(34,(35,36),'ghi')/)
if (a01/=1)print *,'err1'
if (abs(b01-(2,3))>0.0001)print *,'err2'
if (c01/='456')print *,'err3'
if (d01%a11/=11)print *,'err4'
if (abs(d01%b11-(12,13))>0.0001)print *,'err5'
if (d01%c11/='789')print *,'err6'
if (a02(1)/=21)print *,'err7'
if (a02(2)/=22)print *,'err8'
if (any(abs(b02-(/(23,24),(25,26)/))>0.0001))print *,'err9'
if (any(c02/=(/'789','abc'/)))print *,'err10'
if (any(d02%a11/=(/31,34/)))print *,'err11'
if (any(abs(d02%b11-(/(32,33),(35,36)/))>0.0001))print *,'err12'
if (any(d02%c11/=(/'def','ghi'/)))print *,'err13'
print *,'pass'
 end
