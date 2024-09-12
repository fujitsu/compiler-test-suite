integer,allocatable ::a(:),b
k1=1
a=(/k1/)
b=a(1)
if (a(1)/=1)print *,'err'
if (b/=1)print *,'err'
print *,'pass'
end
