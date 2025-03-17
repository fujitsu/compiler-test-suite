call s1
call s2
print *,'pass'
end
subroutine s1
save i
return
entry s2
i=i+1
if (i==0)print *,'error'
end
