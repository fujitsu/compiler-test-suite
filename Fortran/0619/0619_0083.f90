subroutine s1
implicit real(4)(a,b)
parameter( a01=1.123_4)
parameter( a02=1.123_4* 2.)
parameter( a04=abs( cmplx (a01,a02) ) ) 
b01=a01
b02=a02
b04=abs( cmplx (b01,b02) ) 
if (a04/=b04) print *,104
end
call s1
print *,'pass'
end
