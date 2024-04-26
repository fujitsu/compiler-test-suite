integer,pointer :: ptr(:,:)
integer,target::x(3,3) =reshape([1,2,3,4,5,6,7,8,9],[3,3])
 integer::k=1
 ptr=>x(1:3:k,1:3:k)
 call sub(ptr(:,:)) 
  if(any(ptr.ne.reshape([11,12,13,14,15,16,17,18,19],[3,3])))print*,"109"
 ptr = reshape([1,2,3,4,5,6,7,8,9],[3,3])
 call sub(ptr)
  if(any(ptr.ne.reshape([11,12,13,14,15,16,17,18,19],[3,3])))print*,"110"
 print*,"Pass"
  contains
  subroutine sub(dmy)
  integer:: dmy(3,3)
  if(any(dmy.ne.reshape([1,2,3,4,5,6,7,8,9],[3,3])))print*,"101"
  if(loc(dmy).ne.loc(ptr))print*,"103"
  if(rank(dmy).ne.2)print*,"104"
  dmy = dmy +10
  end subroutine
  end

