program main
integer::i(5,3,3,4,5)=2

associate(a=>i(:,:,2,:,:))
 if(any(a/=2)) print*,101
 a(2,2,2,2)=3
 a=5
end associate

if(any(i(:,:,1,:,:)/=2)) print*,102
if(any(i(:,:,3,:,:)/=2)) print*,102
if(i(2,2,2,2,2)==3) i(2,2,2,2,2)=5
if(all(i(:,:,2,:,:)==5)) print*,'pass'
end
