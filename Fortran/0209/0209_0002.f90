complex (2):: a

a=1.0
b= real( a )
a= cmplx(0,0, kind=2)
if (abs(b-1)>0.0001) print *,101
if (a      /=  0) print *,102
b= abs(real( a ))
if (abs(b)>0.01) print *,103

print *,'pass'
end
