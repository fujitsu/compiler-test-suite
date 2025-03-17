call s2
call s1
print *,'pass'
end
subroutine s1
save i
i=i+1
if (i==0)print *,'error'
return
entry s2
end
