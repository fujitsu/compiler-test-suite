subroutine s1
parameter(a1=-3.0,a2=-4.0)
real,parameter::a3=a1**a2
b1=-3.0
b2=-4.0
b3=b1**b2
if (abs(a3-b3)>0.000001)print *,101,a3-b3
end
call s1
print *,'pass'
end
