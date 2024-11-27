real a,b,c
a=1.0
b=2.0
C=3.0
call sub1(1.0,b,c)
if (abs(a-1.0)>0.0001)print *,'error-1'
if (abs(b-6.0)>0.0001)print *,'error-2'
if (abs(c-7.0)>0.0001)print *,'error-3'
print *,'pass'
END
subroutine sub1(x,y,z)
real x,y,z
x=5.0
y=6.0
z=7.0
end
