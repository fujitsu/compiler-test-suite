call s
print *,'pass'
end
subroutine s
r = sinh(.5)
if(abs(r-0.521095335) >= 0.10000000) print *,'err'
end
