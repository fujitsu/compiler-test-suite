integer a(3)/10,20,30/
integer b(3)/10,20,30/
forall (k=2:2)
forall (i=1:3,i/=k)
 a(i)=1
 b(i)=1
end forall
end forall
if (a(1)/=1)print *,'error-1'
if (a(2)/=20)print *,'error-2'
if (a(3)/=1)print *,'error-3'
if (b(1)/=1)print *,'error-11'
if (b(2)/=20)print *,'error-12'
if (b(3)/=1)print *,'error-13'
print *,'pass'
end
