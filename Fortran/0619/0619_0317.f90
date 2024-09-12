subroutine s1
real,parameter::a1=sqrt(0.1_4)
real(8),parameter::a2=sqrt(0.1_8)
if (abs(a1-0.316227764)>0.0001)print *,101
if (abs(a2-0.3162277660168379_8)>0.000001_8)print *,102
end
call s1
print *,'pass'
end
