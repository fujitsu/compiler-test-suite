call s
print *,'pass'
end
subroutine s
i = range(4.2)
if (kind(i).eq.4) then
if(i.ne.37) print *,'err'
endif
end
