integer,target::x(3,3)= reshape([1,2,3,4,5,6,7,8,9],[3,3])
integer,pointer::ptr(:,:)
ptr=>x
 call sub(ptr(:,:)) 
  if(any(ptr.ne.reshape([11,12,13,14,15,16,17,18,19],[3,3])))print*,"101"
  x = reshape([1,2,3,4,5,6,7,8,9],[3,3])
 call sub(ptr)
  if(any(ptr.ne.reshape([11,12,13,14,15,16,17,18,19],[3,3])))print*,"109"
 print*,"Pass"
  contains
  subroutine sub(dmy)
  integer::dmy(:,:)
  if(any(dmy.ne.reshape([1,2,3,4,5,6,7,8,9],[3,3])))print*,"101"
  if(loc(dmy).ne.loc(x))print*,"201"
  dmy = dmy +10
  end subroutine
  end

