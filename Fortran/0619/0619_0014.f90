subroutine s1
integer(2),parameter::x01=2
integer(1),parameter::x02=2
integer(4),parameter::x03=2
integer(8),parameter::x04=2
real,parameter::a01=dfloat(x01)
real,parameter::a02=dfloat(x02)
real,parameter::a03=dfloat(x03)
real,parameter::a04=dfloat(x04)
integer,parameter::b01=kind(dfloat(x01))
integer,parameter::b02=kind(dfloat(x02))
integer,parameter::b03=kind(dfloat(x03))
integer,parameter::b04=kind(dfloat(x04))
if (abs(a01-2)>0.0001)print *,101
if (abs(a02-2)>0.0001)print *,102
if (abs(a03-2)>0.0001)print *,103
if (abs(a04-2)>0.0001)print *,104
if (b01/=8)print *,102
if (b02/=8)print *,102
if (b03/=8)print *,102
if (b04/=8)print *,102
if (abs(dfloat(x01)-2)>0.0001)print *,201
if (kind(dfloat(x01))/=8)print *,202
end
call s1
print *,'pass'
end

