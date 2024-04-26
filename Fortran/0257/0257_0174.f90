integer,pointer :: ptr(:,:)
 allocate(ptr(3,2))
 ptr = reshape([1,2,3,4,5,6],[3,2])
 call sub(ptr(:,:)) 
  if(any(ptr.ne.reshape([11,12,13,14,15,16],[3,2])))print*,"109"
 ptr = reshape([1,2,3,4,5,6],[3,2])
 call sub(ptr)
  if(any(ptr.ne.reshape([11,12,13,14,15,16],[3,2])))print*,"110"
 print*,"Pass"
  contains
  subroutine sub(dmy)
  integer:: dmy(3,2)
  if(any(dmy.ne.reshape([1,2,3,4,5,6],[3,2])))print*,"101"
  if(loc(dmy).ne.loc(ptr))print*,"103"
  if(rank(dmy).ne.2)print*,"104"
  dmy = dmy +10
  end subroutine
  end

