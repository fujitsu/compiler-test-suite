integer,parameter::r=2.0,i=3.0
complex ::c
c=cmplx(r,i)
if (abs(c-(2,3))>0.0001)print *,'eroor',c
print *,'pass'
end
