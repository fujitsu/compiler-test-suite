integer,pointer :: ptr(:,:)
integer,pointer :: ptr2(:)
integer,pointer :: ptr3(:,:,:)
integer,target::t1(2,2,2)=reshape([1,2,3,4,5,6,7,8],[2,2,2])
integer,target::t2(3,3)= reshape([1,2,3,4,5,6,7,8,9],[3,3])
ptr =>t1(:,:,1) 
call sub(ptr(:,:)) 
ptr =>t1(2,:,:)
call sub2(ptr(:,:)) 
ptr2 =>t2(1,:)
call sub3(ptr2(:)) 
ptr =>t1(:,:,1) 
call sub1(ptr(:,:)) 
ptr =>t1(2,:,:)
call sub12(ptr(:,:)) 
ptr2 =>t2(1,:)
call sub13(ptr2(:)) 
ptr =>t1(:,:,1) 
call sub11(ptr(:,:)) 
ptr =>t1(2,:,:)
call sub112(ptr(:,:)) 
ptr2 =>t2(1,:)
call sub113(ptr2(:)) 
ptr3=>t1
call sub111(ptr3(:,:,:)) 
call sub1112(ptr3(:,:,:)) 
call sub1113(ptr3(:,:,:)) 
print*,"Pass"
contains
subroutine sub(dmy)
  integer::dmy(2,2)
  if(any(dmy.ne.reshape([1,2,3,4],[2,2])))print*,"105"
end subroutine
subroutine sub2(dmy)
  integer::dmy(2,2)
  if(any(dmy.ne.reshape([2,4,6,8],[2,2])))print*,"107"
end subroutine
subroutine sub3(dmy)
  integer::dmy(3)
  if(any(dmy.ne.reshape([1,4,7],[3])))print*,"108"
end subroutine
subroutine sub1(dmy)
  integer::dmy(:,:)
  if(any(dmy.ne.reshape([1,2,3,4],[2,2])))print*,"105"
end subroutine
subroutine sub12(dmy)
  integer::dmy(:,:)
  if(any(dmy.ne.reshape([2,4,6,8],[2,2])))print*,"107"
end subroutine
subroutine sub13(dmy)
  integer::dmy(:)
  if(any(dmy.ne.reshape([1,4,7],[3])))print*,"108"
end subroutine
subroutine sub11(dmy)
  integer,contiguous::dmy(:,:)
  if(any(dmy.ne.reshape([1,2,3,4],[2,2])))print*,"105"
end subroutine
subroutine sub112(dmy)
  integer,contiguous::dmy(:,:)
  if(any(dmy.ne.reshape([2,4,6,8],[2,2])))print*,"107"
end subroutine
subroutine sub113(dmy)
  integer,contiguous::dmy(:)
  if(any(dmy.ne.reshape([1,4,7],[3])))print*,"108"
end subroutine
subroutine sub111(dmy)
  integer::dmy(2,2,2)
  if(any(dmy.ne.reshape([1,2,3,4,5,6,7,8],[2,2,2])))print*,"115"
end subroutine
subroutine sub1112(dmy)
  integer,contiguous::dmy(:,:,:)
  if(any(dmy.ne.reshape([1,2,3,4,5,6,7,8],[2,2,2])))print*,"125"
end subroutine
subroutine sub1113(dmy)
  integer,contiguous::dmy(:,:,:)
  if(any(dmy.ne.reshape([1,2,3,4,5,6,7,8],[2,2,2])))print*,"135"
end subroutine
end

