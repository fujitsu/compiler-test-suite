integer a(3),b(3)/10,20,30/
forall (i=1:3)
 a(i)=b(i)+1
end forall
if (a(1)/=11)print *,'error-1'
if (a(2)/=21)print *,'error-2'
if (a(3)/=31)print *,'error-3'
print *,'pass'
end
