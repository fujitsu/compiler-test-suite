complex(2):: c,c1
integer::k=1
c=(1,1)
c1=c/k
if (abs(c-(1,1))>0.001) print *,101
print *,'pass'
end
