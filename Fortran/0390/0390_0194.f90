integer:: x(2,2)=0,y(2,2)=0,z(2),m=2,n=2
forall (j=1:m, k=1:n) x(k, j) = y(j, k)
do concurrent(i=1:2)
z(i) = i
end do
print *,'pass'
end
