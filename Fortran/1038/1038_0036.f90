call s0()
print *,'pass'
end
subroutine s0
data i1/1/,i2/2/
i1=1+i1
i2=1+i2
if (i1/=2)print *,'error-1'
if (i2/=3)print *,'error-1'
end
