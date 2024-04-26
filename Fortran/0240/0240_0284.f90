call s
print *,'pass'
end
subroutine s
k = shiftr(-14142, 5)
if (kind(k).eq.4) then
if(k.ne.134217286) print *,'err'
endif
end
