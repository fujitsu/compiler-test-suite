real,parameter::x=34.e+6
real,parameter::b=b"1100"
real,parameter::a="5553"o
real,parameter::c="FFFF"x
complex::c1=(x,b)
complex::c2=(a,c)

if ( real(c2) == a) then
print *,'pass'
else
print *,'ng',c1,c2,a
endif
end
