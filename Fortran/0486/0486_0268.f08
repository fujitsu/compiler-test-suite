subroutine s1
parameter( a=erf(1.0) )
b=1.0
c=erf(b)
if (abs(a-0.843)>0.001) print *,1001
if (abs(c-0.843)>0.001) print *,1002
end
subroutine s2
parameter( a=erfc(1.0) )
b=1.0
c=erfc(b)
if (abs(a-0.157)>0.001) print *,2001
if (abs(c-0.157)>0.001) print *,2002
end
call s1
call s2
print *,'pass'
end
