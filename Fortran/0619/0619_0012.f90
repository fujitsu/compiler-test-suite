subroutine s1
real(8),parameter::x01=2
real,parameter::a01=sngl(x01)
integer,parameter::b01=kind(sngl(x01))
if (abs(a01-2)>0.0001)print *,101
if (b01/=4)print *,102
if (abs(sngl(x01)-2)>0.0001)print *,201
if (kind(sngl(x01))/=4)print *,202
end
call s1
print *,'pass'
end

