real:: result
result = norm2 ( [ 3.0, 4.0] )

if ( result      /= 5.0)print *,105,result
if (abs(result-5.) > 0.000001)print *,101,result
result = norm2( x=[3.0 , 4.0 ] )
if (abs(result-5.) > 0.000001)print *,102,result
result = norm2( dim=1,x=[3.0 , 4.0 ] )
if (abs(result-5.) > 0.000001)print *,103,result
print *,'pass'
end
