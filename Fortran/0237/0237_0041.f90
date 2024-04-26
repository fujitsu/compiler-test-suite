complex,parameter::c1=product([(0.0,0.0)])
complex,parameter::c2=product(array=[(0.0,0.0)],mask=.false.)
complex,parameter::c3(1)=product(array=[(0.0,0.0)],mask=.false.,dim=1)

if (c1/=0) print *,101
if (c2/=1) print *,102
if (any(c3/=1)) print *,103
print *,'pass'

end
