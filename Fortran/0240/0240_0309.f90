call s
print *,'pass'
end
subroutine s
r = tanh(.5)
if(abs(r-0.462117165)>=0.10000000) print *,'err'
end
