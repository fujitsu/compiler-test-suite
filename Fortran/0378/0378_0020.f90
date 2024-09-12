subroutine s1(x)
  external erf
  x=erf(.5)
end
function erf(a)
erf=a
end function
call s1(x)
y=erf(.5)
if (abs(x-.5)>0.0001)print *,1,x
if (abs(y-.5204998)>0.0001)print *,2,y
print *,'pass'
end
