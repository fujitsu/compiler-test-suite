type ty
integer,pointer :: ptr(:,:)
integer,pointer :: ptr2(:,:,:)
integer,pointer :: ptr3(:)
end type
type(ty)::obj
integer,target::t1(3,3) =reshape([1,2,3,4,5,6,7,8,9],[3,3])
integer,target::t2(2,2,2) =reshape([1,2,3,4,5,6,7,8],[2,2,2])
integer,target::t3(8) =reshape([1,2,3,4,5,6,7,8],[8])
obj%ptr => t1
obj%ptr2 => t2
obj%ptr3 => t3
call sub1(obj%ptr(:,:)) 
call sub11(obj%ptr2(:,:,:)) 
call sub111(obj%ptr3(:)) 
if(any(t1.ne.reshape([11,12,13,14,15,16,17,18,19],[3,3])))print*,"101"
if(any(t3.ne.reshape([11,12,13,14,15,16,17,18],[8])))print*,"102"
if(any(t2.ne.reshape([11,12,13,14,15,16,17,18],[2,2,2])))print*,"103"
t1 =reshape([1,2,3,4,5,6,7,8,9],[3,3])
t2 =reshape([1,2,3,4,5,6,7,8],[2,2,2])
t3 =reshape([1,2,3,4,5,6,7,8],[8])
call sub2(obj%ptr(:,:)) 
call sub22(obj%ptr2(:,:,:)) 
call sub222(obj%ptr3(:)) 
if(any(t1.ne.reshape([11,12,13,14,15,16,17,18,19],[3,3])))print*,"111"
if(any(t3.ne.reshape([11,12,13,14,15,16,17,18],[8])))print*,"112"
if(any(t2.ne.reshape([11,12,13,14,15,16,17,18],[2,2,2])))print*,"113"
t1 =reshape([1,2,3,4,5,6,7,8,9],[3,3])
t2 =reshape([1,2,3,4,5,6,7,8],[2,2,2])
t3 =reshape([1,2,3,4,5,6,7,8],[8])
call sub3(obj%ptr(:,:)) 
call sub33(obj%ptr2(:,:,:)) 
call sub333(obj%ptr3(:)) 
if(any(t1.ne.reshape([11,12,13,14,15,16,17,18,19],[3,3])))print*,"121"
if(any(t3.ne.reshape([11,12,13,14,15,16,17,18],[8])))print*,"122"
if(any(t2.ne.reshape([11,12,13,14,15,16,17,18],[2,2,2])))print*,"123"
print*,"Pass"
contains
subroutine sub1(dmy)
integer:: dmy(3,3)
  if(any(dmy.ne.reshape([1,2,3,4,5,6,7,8,9],[3,3])))print*,"106"
  if(loc(dmy).ne.loc(t1))print*,"101"
  dmy = dmy + 10
end subroutine
subroutine sub2(dmy)
integer,contiguous:: dmy(:,:)
  if(any(dmy.ne.reshape([1,2,3,4,5,6,7,8,9],[3,3])))print*,"106"
  if(loc(dmy).ne.loc(t1))print*,"101"
  dmy = dmy + 10
end subroutine
subroutine sub3(dmy)
integer:: dmy(:,:)
  if(any(dmy.ne.reshape([1,2,3,4,5,6,7,8,9],[3,3])))print*,"106"
  if(loc(dmy).ne.loc(t1))print*,"101"
  dmy = dmy + 10
end subroutine
subroutine sub11(dmy)
integer:: dmy(2,2,2)
  if(any(dmy.ne.reshape([1,2,3,4,5,6,7,8],[2,2,2])))print*,"106"
  if(loc(dmy).ne.loc(t2))print*,"101"
  dmy = dmy + 10
end subroutine
subroutine sub22(dmy)
integer,contiguous:: dmy(:,:,:)
  if(any(dmy.ne.reshape([1,2,3,4,5,6,7,8],[2,2,2])))print*,"106"
  if(loc(dmy).ne.loc(t2))print*,"101"
  dmy = dmy + 10
end subroutine
subroutine sub33(dmy)
integer:: dmy(:,:,:)
  if(any(dmy.ne.reshape([1,2,3,4,5,6,7,8],[2,2,2])))print*,"106"
  if(loc(dmy).ne.loc(t2))print*,"101"
  dmy = dmy + 10
end subroutine
subroutine sub111(dmy)
integer:: dmy(8)
  if(any(dmy.ne.reshape([1,2,3,4,5,6,7,8],[8])))print*,"106"
  if(loc(dmy).ne.loc(t3))print*,"101"
  dmy = dmy + 10
end subroutine
subroutine sub222(dmy)
integer,contiguous:: dmy(:)
  if(any(dmy.ne.reshape([1,2,3,4,5,6,7,8],[8])))print*,"106"
  if(loc(dmy).ne.loc(t3))print*,"101"
  dmy = dmy + 10
end subroutine
subroutine sub333(dmy)
integer:: dmy(:)
  if(any(dmy.ne.reshape([1,2,3,4,5,6,7,8],[8])))print*,"106"
  if(loc(dmy).ne.loc(t3))print*,"101"
  dmy = dmy + 10
end subroutine
end

