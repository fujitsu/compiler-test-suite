real,parameter::a=erf(1.)
real,parameter::aa=erfc(1.)
real,parameter::c=gamma(1.)
b=1.   
if (abs(a-erf(b))>0.0001) print *,101
if (abs(aa-erfc(b))>0.0001) print *,102
if (abs(c-gamma(c))>0.0001) print *,103
print *,'pass'
end 
