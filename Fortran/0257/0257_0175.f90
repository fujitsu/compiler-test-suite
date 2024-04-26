integer,pointer :: ptr(:)
integer,target::x(5) = [1,2,3,4,5]
 ptr=>x
 call sub(ptr(:)) 
 call sub(ptr)
 print*,"Pass"
  contains
  subroutine sub(dmy)
  integer,intent(in):: dmy(5)
  if(any(dmy.ne.[1,2,3,4,5]))print*,"101"
  if(loc(dmy).ne.loc(ptr))print*,"103"
  if(rank(dmy).ne.1)print*,"104"
  end subroutine
  end

