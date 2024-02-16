integer,parameter::k1=1,k2=10,k3=2
integer a(10,10,10)
forall (i=1:10:2,j=1:10:3,k=k1:k2:k3)
  a(i,j,k)=i+j+k
end forall 

do i=1,10,2
do j=1,10,3
do k=k1,k2,k3
 if(a(i,j,k).ne.i+j+k)print*,'ng',i,j,k
enddo;enddo;enddo
print*,'pass'
end
