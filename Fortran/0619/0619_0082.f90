subroutine s1
implicit real(4)(a,b)
parameter( a01=1.123_4)
parameter( a02=1.123_4* 2.)
parameter( a03=abs( a01 ))
parameter( a04=abs( cmplx (a01,a02) ) ) 
parameter( a05=-a01)
parameter( a06=-a02)
parameter( a07=abs( a05 ) )
parameter( a08=abs( cmplx (a06,a07) ) ) 
b01=a01
b02=a02
b03=abs( b01 )
b04=abs( cmplx (b01,b02) ) 
b05=-b01
b06=-b02
b07=abs( b05 )
b08=abs( cmplx (b06,b07) ) 
if (a01/=b01) print *,101
if (a02/=b02) print *,102
if (a03/=b03) print *,103
if (a04/=b04) print *,104
if (a05/=b05) print *,105
if (a06/=b06) print *,106
if (a07/=b07) print *,107
if (a08/=b08) print *,108
end
call s1
print *,'pass'
end
