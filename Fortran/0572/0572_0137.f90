program main
logical, parameter :: arr3(3,4) = reshape([.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.TRUE.,.FALSE.,.FALSE.,.FALSE.,.TRUE.,.TRUE.,.TRUE.],[3,4])
integer, parameter :: mm(2) = findloc(arr3,VALUE = .FALSE.,BACK = .TRUE.)
if(mm(1) /= 3)print*, 101
if(mm(2) /= 3)print*, 102
print*, "pass"
end
