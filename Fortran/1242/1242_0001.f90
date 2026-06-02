! ok print *, (/(arr(i),i=1,size(arr))/)
! associate( block_thickness_z => (/(arr(i),i=1,int(arr(1)))/))
integer :: ia=0

  associate( block_thickness_z => (/(int(i),i=int(1),int(1),int(1))/))
ia=size(block_thickness_z)
  end associate
if (ia.ne.1) print *,'ng1'
print *,'pass'
end

