integer::i1=1,i2=9,i3=2
integer::j1=1,j2=9,j3=2
integer::k1=1,k2=9,k3=2
integer a(10,10,10)
forall (i=i3-i1:i1+i2:i3+i1,j=j3-j1:j1+j2:j3+i1,k=k3-k1:k1+k2:k3+i1)
  a(i,j,k)=i+j+k
end forall 

do i=1,10,3
do j=1,10,3
do k=1,10,3
 if(a(i,j,k).ne.i+j+k)print*,'ng',i,j,k
enddo;enddo;enddo
print*,'pass'
end
