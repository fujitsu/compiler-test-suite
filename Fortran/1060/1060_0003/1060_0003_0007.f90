subroutine sub_i(i)
implicit none
integer i(:,:)
integer j
       character*(*) ch3
i=i+1
return
entry ent_i(j, ch3)
j=j+1
if (len(ch3) .ne. 3) stop 'ch3-1'
if (ch3.ne.'XYZ') stop 'ch3-2'
end
