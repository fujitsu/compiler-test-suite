character*2,target::t1(3,3)= "aa"
integer,parameter::k=1
integer,parameter::l=2
character*2,pointer::ptr(:,:)=>t1(1:3:1,1:3:k)
character*2,pointer::ptr1(:,:)=>t1(1:3:1,1:3:1)(1:l)
character*2,pointer::ptr11(:,:)=>t1(1:3:1,1:3:1)(k:2)
character*2,pointer::ptr12(:,:)=>t1(1:3:1,1:3:1)(k:l)
character*2,pointer::ptr2(:,:)
character*2,pointer::ptr3(:,:)
character*2,pointer::ptr4(:,:)
character*2,pointer::ptr5(:,:)
character*2,pointer::ptr6(:,:)
character*2,pointer::ptr7(:,:)
data ptr2,ptr3, ptr4, ptr5, ptr6, ptr7 /t1(1:3:k,1:3:k),t1(1:k:1,k:1:2),t1(1:3:1,1:k:1),t1(1:3:1,k:3:1)(1:l),t1(1:1:1,1:1:2)(k:2),t1(1:3:1,1:1:1)(k:k+1)/
if(associated(ptr).neqv..true.)print*,"101"
if(associated(ptr2).neqv..true.)print*,"102"
if(associated(ptr3).neqv..true.)print*,"103"
if(associated(ptr4).neqv..true.)print*,"104"
if(associated(ptr5).neqv..true.)print*,"105"
if(associated(ptr6).neqv..true.)print*,"106"
if(associated(ptr7).neqv..true.)print*,"107"
if(associated(ptr11).neqv..true.)print*,"108"
if(associated(ptr12).neqv..true.)print*,"109"
if(associated(ptr1).neqv..true.)print*,"110"
print*,"PASS"
end
