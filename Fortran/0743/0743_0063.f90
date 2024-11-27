real a,b,c
real,parameter::ap=1.0,bp=2.0,cp=3.0
a=1.0
b=2.0
c=3.0
call sub1(ap,b,c)
if (abs(a-ap)>0.0001)print *,'error-1'
if (abs(b-6.0)>0.0001)print *,'error-2'
if (abs(c-7.0)>0.0001)print *,'error-3'
a=1.0
b=2.0
c=3.0
call sub1(ap,bp,cp)
if (abs(a-ap)>0.0001)print *,'error-11'
if (abs(b-bp)>0.0001)print *,'error-12'
if (abs(c-cp)>0.0001)print *,'error-13'
print *,'pass'
END
subroutine sub1(x,y,z)
real x,y,z
x=5.0
y=6.0
z=7.0
end
