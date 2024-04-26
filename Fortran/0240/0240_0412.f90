call s
print *,'pass'
end
subroutine s
i = 53
j = 45
k = ieor(i,j)
if(k.ne.24) print *,'err'
end
