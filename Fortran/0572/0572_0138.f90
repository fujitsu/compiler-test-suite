program main
logical, parameter :: arr3(3,4) = reshape([.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.TRUE.,.FALSE.,.FALSE.,.FALSE.,.TRUE.,.TRUE.,.TRUE.],[3,4])
logical, parameter :: m1(3,4) = reshape([.TRUE.,.FALSE.,.FALSE.,.TRUE.,.TRUE.,.TRUE.,.TRUE.,.TRUE.,.TRUE.,.TRUE.,.FALSE.,.TRUE.],[3,4])
integer, parameter :: mm(3) = findloc(arr3,.FALSE.,2,MASK = m1,KIND = 8)
if(mm(1) /= 2)print*, 111
if(mm(2) /= 3)print*, 112
if(mm(3) /= 3)print*, 113
print*, "pass"
end
