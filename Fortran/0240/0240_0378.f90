call s
print *,'pass'
end
subroutine s
i=53
j=45
k=iand(i,j)
if(k.ne.37) print *,'err'
end
