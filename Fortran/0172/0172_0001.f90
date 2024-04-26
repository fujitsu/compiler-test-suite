real:: r(2)
complex ::c
r=1
c=sum( cmplx( r ) )
if (abs(real(c)-2)>0.00001) print *,101
print *,'pass'
end 
