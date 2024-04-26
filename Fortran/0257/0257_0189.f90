integer,target::t1(3,3) =reshape([1,2,3,4,5,6,7,8,9],[3,3])
 integer::k
 k=1
 call sub(t1(1:3:k,1:3:k)) 
 call sub(t1(:,:)) 
 call sub(t1) 
  if(any(t1.ne.reshape([1,2,3,4,5,6,7,8,9],[3,3])))print*,"110"
 print*,"Pass"
  contains
  subroutine sub(dmy)
  integer,contiguous,intent(in):: dmy(:,:)
  if(any(dmy.ne.reshape([1,2,3,4,5,6,7,8,9],[3,3])))print*,"101"
  if(loc(dmy).ne.loc(t1))print*,"103"
  if(rank(dmy).ne.2)print*,"104"
  end subroutine
  end

