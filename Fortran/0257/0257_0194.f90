integer,pointer :: ptr(:,:)
allocate(ptr(3,3))
ptr = reshape([1,2,3,4,5,6,7,8,9],[3,3])
call sub(ptr(:,:)) 
call sub(ptr)
print*,"Pass"
contains
subroutine sub(dmy)
  integer,value:: dmy(3,3)
  if(loc(dmy).eq.loc(ptr))print*,"103"
  if(rank(dmy).ne.2)print*,"104"
  dmy = dmy +10
end subroutine
end

