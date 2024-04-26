integer::ii,pp(10),qq(10)
ii=100
block
integer :: ii
ii=200
if(ii/=200) print*,101
do concurrent(ii=1:10)
block 
Integer :: ii
ii=2
if(ii/=2) print*,104,ii
do concurrent(ii=1:10)
block
integer :: t=2
pp(ii) = ii+t
end block
print*,'value of inner: ',ii
end do 
if(ii/=2) print*,105,ii
end block
qq(ii) = ii
end do
if(ii/=200) print*,102,ii
end block
if(ii/=100) print*,103,ii
print*,pp
print*,qq
end
