integer:: a(2,3,4,5)=reshape( [ (n,n=1,10000) ] , [2,3,4,5])
do n=1,20
write(2,*)shape( findloc( a , n ,1 )), '#', findloc( a , n ,1) 
end do
do n=1,20
write(1,*)shape( findloc( a , n ) ), '#', findloc( a , n ) 
write(1,*)shape( findloc( a , n ,1 )), '#', findloc( a , n ,1) 
write(1,*)shape( findloc( a , n ,2 )), '#', findloc( a , n ,2) 
write(1,*)shape( findloc( a , n ,3 )), '#', findloc( a , n ,3) 
write(1,*)shape( findloc( a , n ,4 )), '#', findloc( a , n ,4) 
end do
print *,'pass'
end
