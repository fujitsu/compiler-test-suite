call s
print *,'pass'
end
subroutine s
i = ibclr(37,2)
if(i.ne.33) print *,'err'
end
