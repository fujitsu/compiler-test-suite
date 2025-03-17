call s1
call s2
print *,'pass'
end
subroutine s1
save i
i=1
return
entry s2
i=i+1
if (i/=2)print *,'error'
end
