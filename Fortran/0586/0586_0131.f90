integer,target::t1(3,3,3)=12
integer,target::t2(3,3)=reshape([1,2,3,4,5,6,7,8,9],[3,3])
integer,target::t4(3)= [1,2,3]
integer,pointer::ptr(:)
integer,pointer::ptr3(:,:)
integer,pointer::ptr4(:,:,:)
integer,pointer,contiguous::ptr5(:)
integer,pointer::ptr6(:,:)
integer,pointer,contiguous::ptr7(:,:,:)
integer,pointer::ptr2(:)=>t4(1:3:2)


data ptr  /t4(1:3:2)/
data ptr3 /t2(1:3:2,1:3:2)/
data ptr4 /t1(1:3:2,1:3:2,1:3:2)/
data ptr5, ptr6 ,ptr7 /t4(1:3:1),t2(1:3:2,1:3:2),t1(1:3:1,1:3:1,1:3:1)/
if(associated(ptr).neqv..true.)print*,"101"
if(associated(ptr2).neqv..true.)print*,"102"
if(associated(ptr3).neqv..true.)print*,"103"
if(any(ptr.ne.[1,3]))print*,"104"
if(any(ptr3.ne.reshape([1,3,7,9],[2,2])))print*,"105"
if(any(ptr2.ne.[1,3]))print*,"107"
if(any(ptr5.ne.[1,2,3]))print*,"108"
if(any(ptr6.ne.reshape([1,3,7,9],[2,2])))print*,"109"
print*,"PASS"
end
