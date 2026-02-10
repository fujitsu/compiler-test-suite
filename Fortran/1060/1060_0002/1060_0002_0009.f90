subroutine sub_r(i)
implicit none
integer i(:,:)
real r
i=i+1
return
entry ent_r(r)
r=r+1
end
