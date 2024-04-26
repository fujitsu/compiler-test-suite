call s
print *,'pass'
end
subroutine s
real x
x = log10 (3.7)
if(abs(x-0.568201721) >= 0.10000000) print *,'err'
end
