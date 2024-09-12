integer a(3,1),b(3,1)/10,20,30/,c(3,1)
i1=1;j1=1;k1=1;i3=3
forall (i=i1:i3:k1,j=k1:i1:j1,i/=0)
 a(i,j)=b(i,j)+1
 c(i,j)=a(i,j)+2
end forall
if (c(1,1)/=13)print *,'error-1'
if (c(2,1)/=23)print *,'error-2'
if (c(3,1)/=33)print *,'error-3'
print *,'pass'
end
