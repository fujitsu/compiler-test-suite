call s0()
call s1()
print *,'pass'
end
subroutine s0
common /v/i1,i2
i1=1+i1
i2=1+i2
if (i1/=2)print *,'error-1'
if (i2/=3)print *,'error-1'
end
block data
common /v/i1,i2
data i1/1/,i2/2/
end
subroutine s1
common /v/j1
integer k(2)
equivalence (j1,k(1),i1)
equivalence (k(2),i2)
i1=1+i1
i2=1+i2
if (i1/=3)print *,'error-1'
if (i2/=4)print *,'error-1'
end
