subroutine sub_value1(i)
implicit none
integer i(:,:)
integer,save::j
integer,value::vi1
       character*(*) ch3
i = i + j
return 
entry ent_value1(vi1, ch3)
j = vi1
if (len(ch3) .ne. 3) stop 'ch3-1'
if (ch3.ne.'XYZ') stop 'ch3-2'
end
