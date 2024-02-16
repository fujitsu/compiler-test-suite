integer,pointer::i1,i2,i3
integer,pointer::j1,j2,j3
integer,pointer::k1,k2,k3
integer a(10,10,10)
allocate(i1,i2,i3,j1,j2,j3,k1,k2,k3)
i1=1;i2=10;i3=2;
j1=1;j2=10;j3=2;
k1=1;k2=10;k3=2;
forall (i=i1:i2:i3,j=j1:j2:j3,k=k1:k2:k3)
  a(i,j,k)=i+j+k
end forall 

do i=1,10,2
do j=1,10,2
do k=1,10,2
 if(a(i,j,k).ne.i+j+k)print*,'ng',i,j,k
enddo;enddo;enddo
print*,'pass'
end
