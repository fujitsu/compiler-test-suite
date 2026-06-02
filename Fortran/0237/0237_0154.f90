integer(2),parameter::x1=INT2(1_1)
integer(2),parameter::x2=kind(INT2(1_1))
if (x1/=1) print *,'error-1'
if (x2/=2) print *,'error-2'
print *,'pass'
end
