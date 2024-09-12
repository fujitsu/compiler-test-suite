subroutine s1
i1=1
i2=2
i3=3
k=&
#line 20
 i1 + i2 + &
i3
if (k/=6)print *,101
end
call s1
print *,'pass'
end
