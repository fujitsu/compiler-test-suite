program main
logical,allocatable :: arr3(:,:)
integer,allocatable :: mm(:)
allocate(mm(2),arr3(3,4))
arr3 = reshape([.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.TRUE.,.FALSE.,.FALSE.,.FALSE.,.TRUE.,.TRUE.,.TRUE.],[3,4])
mm = findloc(arr3,VALUE = .FALSE.,BACK = .TRUE.)
if(mm(1) /= 3)print*, 101
if(mm(2) /= 3)print*, 102
print*, "pass"
end
