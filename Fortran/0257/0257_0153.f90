type ty
integer,pointer :: ptr(:,:)
integer,pointer :: ptr2(:)
end type
type(ty)::obj
integer,target::t1(3,3) =reshape([1,2,3,4,5,6,7,8,9],[3,3])
integer::k=2
obj%ptr => t1(1:3:k,1:3:k)
call sub(obj%ptr(:,:)) 
if(any(t1.ne.reshape([11,2,13,4,5,6,17,8,19],[3,3])))print*,"101"
t1 = reshape([1,2,3,4,5,6,7,8,9],[3,3])
call sub(obj%ptr) 
if(any(t1.ne.reshape([11,2,13,4,5,6,17,8,19],[3,3])))print*,"102"
 print*,"Pass"
contains
subroutine sub(dmy)
integer,contiguous:: dmy(:,:)
  if(any(dmy.ne.reshape([1,3,7,9],[2,2])))print*,"106"
  if(loc(dmy).eq.loc(obj%ptr))print*,"101"
  dmy = dmy + 10
end subroutine
end

