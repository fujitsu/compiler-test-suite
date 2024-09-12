a = norm2( [3.0 , 4.0 ] )

if (abs(a-5.) > 0.000001)print *,101,a
a = norm2( x=[3.0 , 4.0 ] )
if (abs(a-5.) > 0.000001)print *,102,a
a = norm2( dim=1,x=[3.0 , 4.0 ] )
if (abs(a-5.) > 0.000001)print *,103,a
print *,'pass'
end
