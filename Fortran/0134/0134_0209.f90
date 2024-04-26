subroutine s1
k=7
call mvbits(k,2,2,k,0)
if (k/=5)print *,101,k
end
call s1
print *,'pass'
end
