integer a(3),b(3)/10,20,30/,c(3)
forall (i=1:3)
 a(i)=b(i)+1
 c(i)=a(i)+2
end forall
if (c(1)/=13)print *,'error-1'
if (c(2)/=23)print *,'error-2'
if (c(3)/=33)print *,'error-3'
print *,'pass'
end
