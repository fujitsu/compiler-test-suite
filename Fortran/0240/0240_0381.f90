call s
print *,'pass'
end
subroutine s
i = ibset (37,1)
if(i.ne.39) print *,'err'
end
