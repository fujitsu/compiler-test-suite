integer :: a(3,3)
integer :: n=3
a = reshape((/0,1,2,3,4,5,6,7,8/),(/3,3/))
forall (i=1:n-1)
forall (j=i+1:n)
a(i,j) = a(j,i)
end forall
end forall
print *,'pass'
end
