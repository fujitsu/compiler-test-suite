integer,allocatable:: aa(:)
allocate(aa(10))
call sub(aa)
contains 
subroutine sub(bb)
integer :: bb(..)
if(LOC(bb).ne.loc(aa))print*,"101"
print*,"pass"
end subroutine sub
end
