integer,pointer :: ptr(:,:)
 allocate(ptr(3,3))
 ptr = reshape([1,2,3,4,5,6,7,8,9],[3,3])
 call sub(ptr(::1,::1)) 
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

