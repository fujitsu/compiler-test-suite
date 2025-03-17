real(8) a(3,5),b(3,5),c(3,5)
a=2.
b=3.
c=1.
c(:,1:5:2)=matmul(a(:,1:5:2),b(:,1:5:2))
if (any(abs(c(:,1:5:2)-18.)>0.001))print *,'error'
print *,'pass'
end
