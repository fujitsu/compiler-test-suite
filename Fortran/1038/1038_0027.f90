call s1(0)
call s2
call s3
call s4
print *,'pass'
end
subroutine s1(j)
integer,save::i
if (j==0)i=1
i=i+1
if (i/=2)print *,'error'
end
subroutine s2
integer,save::i=1
i=i+1
if (i/=2)print *,'error'
return
entry s3
i=i+1
if (i/=3)print *,'error'
return
entry s4
i=i+1
if (i/=4)print *,'error'
end
