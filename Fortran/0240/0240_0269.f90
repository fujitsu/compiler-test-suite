call s
print *,'pass'
end
subroutine s
r = rrspacing(-4.7)
if (kind(r).eq.4) then
if(abs(r-9856614.00) >= 0.100000000) print *,'err'
endif
end
