subroutine s1
complex(4),parameter::x01=2
complex(8),parameter::x02=2
complex(16),parameter::x03=2
real,parameter::a01=dreal(x01)
real,parameter::a02=dreal(x02)
real,parameter::a03=dreal(x03)
integer,parameter::b01=kind(dreal(x01))
integer,parameter::b02=kind(dreal(x02))
integer,parameter::b03=kind(dreal(x03))
if (abs(a01-2)>0.0001)print *,101
if (abs(a02-2)>0.0001)print *,102
if (abs(a03-2)>0.0001)print *,103
if (b01/=8)print *,102
if (b02/=8)print *,102
if (b03/=8)print *,102
if (abs(dreal(x03)-2)>0.0001)print *,201
if (kind(dreal(x03))/=8)print *,202
end
call s1
print *,'pass'
end

