integer::a(5,5)=reshape((/(i,i=1,25)/),(/5,5/))
forall (I=1:3,j=4:5) a(i,j)=a(j,i)
if (any((/a/)/=(/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,4,9,14,19,20,5,10,15,24,25/)))print *,'error'
print *,'pass'
end
