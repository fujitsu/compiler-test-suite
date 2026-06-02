!integer :: ia=0
integer  :: ccc(1)
ccc=1
associate( block_thickness_z => ccc(ifun((/((i),i=int(1),int(1),int(1))/))))
if (ccc(1).ne.1) print *,'ng1'
end associate
print *,'pass'
contains
function ifun(arr)
integer :: arr(1)
ifun =arr(1)
end
end
