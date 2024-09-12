a= bessel_jn( 1 , 1.0 ) 

if (a/= bessel_jn( 1 , 1.0)) print *,101
if (bessel_j1( 1.0 )/= bessel_jn( 1 , 1.0)) print *,102
print *,'pass'
end
