subroutine sub_r(i)
implicit none
integer i(:,:)
real r
       character*(*) ch3
i=i+1
return
entry ent_r(r, ch3)
r=r+1
if (len(ch3) .ne. 3) stop 'ch3-1'
if (ch3.ne.'XYZ') stop 'ch3-2'
end
