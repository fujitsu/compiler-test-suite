integer ::x(2,2),y(2,2)=0,m=2,n=2
forall (j=1:m, k=1:n) x(k, j) = y(j, k)
print *,'pass'
end
