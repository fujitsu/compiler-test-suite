subroutine s1
associate (p=>k1)
p=1
k1=k1+1
end associate
if (k1/=2)print *,101
end
call s1
print *,'pass'
end
