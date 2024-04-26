call s
print *,'pass'
end
subroutine s
real x
x = log (3.7)
if(abs(x - 1.30833280) >=0.10000000) print *,'err'
end
