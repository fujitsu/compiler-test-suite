call s
print *,'pass'
end
subroutine s
real a,b
a=2
b=1
if ( a >= b ) a = -a
if(a.ne.-2.0) print *,'err'
end
