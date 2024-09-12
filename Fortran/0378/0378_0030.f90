integer ::a(4)
k1=1;k2=2;k3=3;k4=4
a=(/k1,k2,k3,k4/)
if (a(1)/=1)print *,a(1)
if (a(2)/=2)print *,a(2)
if (a(3)/=3)print *,a(3)
if (a(4)/=4)print *,a(4)
a=(/(i,i=1,4)/)
if (a(1)/=1)print *,a(1)
if (a(2)/=2)print *,a(2)
if (a(3)/=3)print *,a(3)
if (a(4)/=4)print *,a(4)
a=(/(i,i=k1,k4,k1)/)
if (a(1)/=1)print *,a(1)
if (a(2)/=2)print *,a(2)
if (a(3)/=3)print *,a(3)
if (a(4)/=4)print *,a(4)
print *,'pass'
end
