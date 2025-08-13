real    ,parameter::a1r=x'3F459275'
real    ,parameter::a1i=x'3DCF95AF'
real    ,parameter::a2r=x'3E8E6821'
real    ,parameter::a2i=x'3EDF4ACA'
complex,parameter::a1=(a1r,a1i)
complex,parameter::a2=(a2r,a2i)
complex::b1,b2
b1=a1
b2=a2
write(8,*)a1,a2,a1/a2
write(8,*)1,b2,b1/b2
print *,'pass'
end
