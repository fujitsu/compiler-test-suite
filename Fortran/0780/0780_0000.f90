complex,parameter:: a=(1.0,2.0)
real ,parameter:: r=1.0 ,rr=2.0
complex:: c
c=(r,rr)
c=(a%re,a%im)
if (c%re.ne.1.0) print *,'err'
if (c%im.ne.2.0) print *,'err'
print *,'pass'
end
