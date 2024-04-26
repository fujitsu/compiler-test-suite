call s
print *,'pass'
end
subroutine s
i = lshift(7,2)
if(i.ne.28) print *,'err'
end
