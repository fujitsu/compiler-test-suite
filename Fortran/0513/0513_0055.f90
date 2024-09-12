real,parameter::r1=1.1752012
complex,parameter::c1=(1.1752012,-1.1752012)
real(8),parameter::r2=1.1752012_8
complex(8),parameter::c2=(1.1752012_8,-1.1752012_8)
real(16),parameter::r3=1.1752012_16
complex(16),parameter::c3=(1.1752012_16,-1.1752012_16)
real,parameter::res1=asinh(r1)
complex,parameter::res2=asinh(c1)
real(8),parameter::res3=asinh(r2)
complex(8),parameter::res4=asinh(c2)
real(16),parameter::res5=asinh(x=r3)
complex(16),parameter::res6=asinh(x=c3)
if(res1/=asinh(r1)) print *,'err1'
if(res2/=asinh(c1)) print *,'err2'

if(res3/=asinh(r2)) print *,'err3'
if(res4/=asinh(c2)) print *,'err4'

if(res5/=asinh(x=r3)) print *,'err5'
if(res6/=asinh(x=c3)) print *,'err6'

print *,'pass'
end
