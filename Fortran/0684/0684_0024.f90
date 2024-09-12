integer a(3,1,3),b(3,1,3)/10,20,30,40,50,60,70,80,90/
integer c(3,1,3)/10,20,30,40,50,60,70,80,90/,d(3)/-99,23,-99/
i1=1;j1=1;k1=1;i3=3
forall (i=i1:i3:k1,j=k1:i1:j1)
where (d==-99)
 a(i,j,:)=b(i,j,:)+1
 c(i,j,:)=a(i,j,:)+2
end where
end forall
if (c(1,1,1)/=13)print *,'error-1'
if (c(2,1,1)/=23)print *,'error-2'
if (c(3,1,1)/=33)print *,'error-3'
if (c(1,1,2)/=40)print *,'error-1'
if (c(2,1,2)/=50)print *,'error-2'
if (c(3,1,2)/=60)print *,'error-3'
if (c(1,1,3)/=73)print *,'error-1'
if (c(2,1,3)/=83)print *,'error-2'
if (c(3,1,3)/=93)print *,'error-3'
print *,'pass'
end
