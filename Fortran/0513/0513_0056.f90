real,parameter::r1=0.76159416
complex,parameter::c1=(0.76159416,-0.76159416)
real(8),parameter::r2=0.76159416_8
complex(8),parameter::c2=(0.76159416_8,-0.76159416_8)
real(16),parameter::r3=0.76159416_16
complex(16),parameter::c3=(0.76159416_16,-0.76159416_16)
real,parameter::res1=atanh(r1)
complex,parameter::res2=atanh(c1)
real(8),parameter::res3=atanh(r2)
complex(8),parameter::res4=atanh(c2)
real(16),parameter::res5=atanh(x=r3)
complex(16),parameter::res6=atanh(x=c3)
if(res1/=atanh(r1)) print *,'err1'
if(res2/=atanh(c1)) print *,'err2'

if(res3/=atanh(r2)) print *,'err3'
if(res4/=atanh(c2)) print *,'err4'

if(res5/=atanh(x=r3)) print *,'err5'
if(res6/=atanh(x=c3)) print *,'err6'

print *,'pass'
end
