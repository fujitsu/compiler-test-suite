integer,pointer :: ptr(:,:)
integer,target::x(3,3) =reshape([1,2,3,4,5,6,7,8,9],[3,3])
 ptr=>x(1:3:2,1:3:2)
 call sub(ptr(:,:)) 
if(any(x.ne.reshape([11,2,13,4,5,6,17,8,19],[3,3])))print*,"101"
x =reshape([1,2,3,4,5,6,7,8,9],[3,3])
 call sub(ptr)
if(any(x.ne.reshape([11,2,13,4,5,6,17,8,19],[3,3])))print*,"102"
 print*,"Pass"
  contains
  subroutine sub(dmy)
  integer:: dmy(2,2)
  if(any(dmy.ne.reshape([1,3,7,9],[2,2])))print*,"103"
  if(loc(dmy).eq.loc(ptr))print*,"103"
  if(rank(dmy).ne.2)print*,"104"
  dmy = dmy +10
  end subroutine
  end

