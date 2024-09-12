integer a(3)/10,20,30/
j=1
forall (i=1:3,j/=2)
 a(i)=1
end forall
if (a(1)/=1)print *,'error-1'
if (a(2)/=1)print *,'error-2'
if (a(3)/=1)print *,'error-3'
print *,'pass'
end
