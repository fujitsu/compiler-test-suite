call s
print *,'pass'
end
subroutine s
k = maskl(31)
if (kind(k).eq.4) then
if(k.ne.-2) print *,'err'
endif
end
