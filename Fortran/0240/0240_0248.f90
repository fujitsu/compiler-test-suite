call s
print *,'pass'
end
subroutine s
i = precision (4.2)
if (kind(i) .eq.4) then
if(i.ne.6) print *,'err'
endif
end
