integer a(3)
do concurrent( k=3:1:-1) 
a(k)=k
end do
if (any(a/=[1,2,3])) print *,20,a
a=0
forall       ( k=3:1:-1) 
a(k)=k
end forall 
if (any(a/=[1,2,3])) print *,20
print *,'pass'
end
