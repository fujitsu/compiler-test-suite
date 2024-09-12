real,parameter::r1=1.5430806
complex,parameter::c1=(1.5430806,-1.5430806)
real(8),parameter::r2=1.5430806_8
complex(8),parameter::c2=(1.5430806_8,-1.5430806_8)
real(16),parameter::r3=1.5430806_16
complex(16),parameter::c3=(1.5430806_16,-1.5430806_16)
real,parameter::res1=acosh(r1)
complex,parameter::res2=acosh(c1)
real(8),parameter::res3=acosh(r2)
complex(8),parameter::res4=acosh(c2)
real(16),parameter::res5=acosh(x=r3)
complex(16),parameter::res6=acosh(x=c3)
if(res1/=acosh(r1)) print *,'err1'
if(res2/=acosh(c1)) print *,'err2'

if(res3/=acosh(r2)) print *,'err3'
if(res4/=acosh(c2)) print *,'err4'

if(res5/=acosh(x=r3)) print *,'err5'
if(res6/=acosh(x=c3)) print *,'err6'

print *,'pass'
end
