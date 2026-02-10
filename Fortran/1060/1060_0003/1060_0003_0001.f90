subroutine sub_allocatable(i)
implicit none
integer i(:,:)
real,allocatable,dimension(:)::alloc
       character*(*) ch3
i = i + 1
return 
entry ent_allocatable(alloc, ch3)
alloc = alloc + 1
if (len(ch3) .ne. 3) stop 'ch3-1'
if (ch3.ne.'XYZ') stop 'ch3-2'
end
