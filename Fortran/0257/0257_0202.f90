type ty
integer,pointer :: ptr(:,:)
end type
type(ty)::obj
integer,target::t(3,3)=reshape([1,2,3,4,5,6,7,8,9],[3,3])
integer,target::t2(3,3)=reshape([1,2,3,4,5,6,7,8,9],[3,3])
obj%ptr=>t(1:3:2,1:3:2)
 call sub(obj%ptr(:,:)) 
 if(any(t.ne.reshape([11,2,13,4,5,6,17,8,19],[3,3])))print*,"209",t
obj%ptr =>t2(1:3:2,1:3:2)
 call sub(obj%ptr)
 if(any(t2.ne.reshape([11,2,13,4,5,6,17,8,19],[3,3])))print*,"100",obj%ptr
 print*,"Pass"
  contains
  subroutine sub(dmy)
  integer:: dmy(2,2)
  if(any(dmy.ne.reshape([1,3,7,9],[2,2])))print*,"101"
  if(loc(dmy).eq.loc(obj%ptr))print*,"109"
  dmy = dmy + 10
  end subroutine
  end

