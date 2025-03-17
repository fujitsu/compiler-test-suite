do j=1,5
call s1(j)
end do
print *,'pass'
end
subroutine s1(j)
integer,save::i
if (j==1)then
   i=1
else
i=i+1
if (i/=j)print *,'error'
endif
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
