call s
print *,'pass'
end
subroutine s
i = ibits (37,2,2)
if(i.ne.1) print *,'err'
end
