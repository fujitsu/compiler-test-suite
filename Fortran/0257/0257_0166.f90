 integer,pointer :: ptr(:)
 allocate(ptr(5))
 ptr = reshape([1,2,3,4,5],[5])
 call sub(ptr(:)) 
 if(any(ptr.ne.[11,12,13,14,15]))print*,"110"
 print*,"Pass"
 contains
 subroutine sub(dmy)
    integer:: dmy(:)
    if(any(dmy.ne.[1,2,3,4,5]))print*,"101"
    if(loc(dmy).ne.loc(ptr))print*,"103"
    if(rank(dmy).ne.1)print*,"104"
    dmy = dmy +10
 end subroutine
 end

