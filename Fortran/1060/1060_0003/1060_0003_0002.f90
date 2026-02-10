subroutine sub_array(i)
implicit none
integer i(:,:),j(1)
real:: array(:)
       character*(*) ch3
i = i + 1
return 
entry ent_array(array, ch3)
array = array + 1
j = lbound(array)
if (j(1).ne.1) stop '2-1'
j = ubound(array)
if (j(1).ne.10) stop '2-2'
if (len(ch3) .ne. 3) stop 'ch3-1'
if (ch3.ne.'XYZ') stop 'ch3-2'
end
