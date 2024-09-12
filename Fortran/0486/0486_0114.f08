real a(1)
real,parameter::b(*)= bessel_jn( [1] , 1.0 ) 
a= bessel_jn( [1] , 1.0 ) 

if (any(a(1)/= bessel_jn( 1 , [1.0]))) print *,101
if (any(b(1)/= bessel_jn( 1 , [1.0]))) print *,101
if (any(bessel_j1( [1.0] )/= bessel_jn( 1 , [1.0]))) print *,102
print *,'pass'
end
