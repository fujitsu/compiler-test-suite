integer a(3),b(3),c(3)
b=(/10,20,30/)
forall (i=1:3)
 a(i)=b(i)+1
 c(i)=a(i)
end forall
if (c(1)/=11)print *,'error-1'
if (c(2)/=21)print *,'error-2'
if (c(3)/=31)print *,'error-3'
print *,'pass'
end
