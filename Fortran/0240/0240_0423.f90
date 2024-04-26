call s
print *,'pass'
end
subroutine s
i=53
j=45
k=ior(i,j)
if(k.ne.61) print *,'err'
end
