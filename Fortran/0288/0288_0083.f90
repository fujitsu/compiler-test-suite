call s
print *,'pass'
end
subroutine s
k = max(-14,3,0,-2,19,1)
if(k.ne.19) print *,'err'
end
