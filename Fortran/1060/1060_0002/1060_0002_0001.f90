subroutine sub_allocatable(i)
implicit none
integer i(:,:)
real,allocatable,dimension(:)::alloc
i = i + 1
return 
entry ent_allocatable(alloc)
alloc = alloc + 1
end
