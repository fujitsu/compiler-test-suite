integer::ii,pp(10)=1,qq(10)
do concurrent(ii=1:10)
block 
Integer :: ii
ii=2
pp(ii) = ii
end block
qq(ii) = ii
end do

if(pp(2)==2) then
 pp(2)=1
else
 pp(2)=100
end if

if(any(pp/=1)) print*,101
do k=1,10
if(qq(k)/=k) print*,102
end do
print*,'pass'
end
