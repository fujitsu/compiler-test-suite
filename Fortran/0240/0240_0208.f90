call s
print *,'pass'
end
subroutine s
k = maskr(2)
if(k.ne.3) print *,'err'
end
