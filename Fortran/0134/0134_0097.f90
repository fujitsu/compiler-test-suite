subroutine s1
real(8):: x
x=1.0
x=float(nint(100*x))/100.
if (abs(x-1)>0.0001)print *,x
end
call s1
print *,'pass'
end

