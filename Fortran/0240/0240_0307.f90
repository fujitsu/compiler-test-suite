call s
print *,'pass'
end
subroutine s
r = tan(.5)
if(abs(r-0.546302497) >= 0.10000000) print *,'err'
end
