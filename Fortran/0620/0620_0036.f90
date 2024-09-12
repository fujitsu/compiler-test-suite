parameter(i=-2)
parameter(a=-2.0)
parameter(b=3.0)
parameter(c1=b**a)
parameter(c2=b**i)
bb=3.0
cc1=bb**i
cc2=bb**a
if (c1/=cc1)print *,c1,cc1
if (c2/=cc2)print *,c2,cc2
print *,'pass'
end
