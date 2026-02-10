subroutine sub_array(i)
implicit none
integer i(:,:),j(1)
real:: array(:)
i = i + 1
return 
entry ent_array(array)
array = array + 1
j = lbound(array)
if (j(1).ne.1) stop '2-1'
j = ubound(array)
if (j(1).ne.10) stop '2-2'
end
