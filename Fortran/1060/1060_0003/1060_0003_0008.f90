subroutine sub_pointer(i)
implicit none
integer i(:,:)
real,pointer,dimension(:)::ptr
       character*(*) ch3
i = i + 1
return 
entry ent_pointer(ptr, ch3)
ptr = ptr + 1
if (len(ch3) .ne. 3) stop 'ch3-1'
if (ch3.ne.'XYZ') stop 'ch3-2'
end
