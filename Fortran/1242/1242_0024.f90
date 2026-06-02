!integer :: ia=0
integer  :: ccc(1)
ccc=1
associate( block_thickness_z => ccc(ifun((/((i),i=(1),int(1),(1))/))))
!ia=1
end associate
!if (ia.ne.1) print *,'ng1'
print *,'pass'
contains
function ifun(arr)
integer :: arr(1)
ifun =arr(1)
end
end
