real :: bb(2) =1.0
real :: a(2)= 1.0, b(2) = 1.0
forall (i = 1:2, bb(i)/= 0.0)
b(i) = a(i)+ b(i)
end forall
if(any(b/=[2.0,2.0])) print *,'err'
print *,'pass'
end
