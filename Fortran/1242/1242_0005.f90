integer :: arr(2)=(/1,2/)
! ok print *, (/(arr(i),i=1,size(arr))/)
  !associate( block_thickness_z => (/(arr(i),i=1,int(arr(1)))/))
  associate( block_thickness_z => (/(int(arr(i)),i=1,2)/))
arr=block_thickness_z+1
  end associate
if (arr(1) .ne. 2) print *,'ERR'
if (arr(2) .ne. 3) print *,'ERR'
print *,'pass'
end

