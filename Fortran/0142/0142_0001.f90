integer :: a(3,3)
integer :: n=3
a = reshape((/0,1,2,3,4,5,6,7,8/),(/3,3/))
forall ( i = 1 : n-1 )
forall ( j = i+1 : n )
a(i,j) = a(j,i)
end forall
end forall
if (any([a]/=[0,1,2,1,4,5,2,5,8])) print *,101
a = reshape((/0,1,2,3,4,5,6,7,8/),(/3,3/))
do  i = 1 , n-1 
do j = i+1 , n 
a(i,j) = a(j,i)
end do    
end do
if (any([a]/=[0,1,2,1,4,5,2,5,8])) print *,101
print *,'pass'
end


