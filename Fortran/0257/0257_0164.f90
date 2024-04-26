integer,target::x(5)= [1,2,3,4,5]
integer,pointer::ptr(:)
ptr=>x
 call sub(ptr(:)) 
 call sub(ptr)
 print*,"Pass"
  contains
  subroutine sub(dmy)
  integer::dmy(5)
  if(any(dmy.ne.[1,2,3,4,5]))print*,"101"
  end subroutine
  end

