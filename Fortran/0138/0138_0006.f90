subroutine s1
integer,target::array1(30,4)=&
  reshape([(n,n=1,30*4)],[30,4])
integer,target::x3d(3,5,3)=&
  reshape([(n,n=1,3*5*3)],[3,5,3])
integer,target::y5d(2,2,2,2,8)=&
  reshape([(n,n=1,16*8)],[2,2,2,2,8])
integer,pointer,contiguous::p1(:),p2(:,:)

i=3;j=4
p2(1:1,1:11)=>array1(10:20, 3)
p2(1:1,1:6)=>x3d(:,i:j, 2)
p2(1:1,1:16)=>y5d(:,:,:,:,7)
end
call s1
print *,'pass'
end
