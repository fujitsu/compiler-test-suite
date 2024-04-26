call s
print *,'pass'
end
subroutine s
i = 17
j = 3
call mvbits (i,3,3,j,1)
if(j.ne.5) print *,'err'
end
