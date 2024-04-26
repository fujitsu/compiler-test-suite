call s
print *,'pass'
end
subroutine s
i = kind (0.0)
if (kind(i) .eq.4) then
if(i.ne.4) print *,'err'
endif
end
