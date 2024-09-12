program main
logical, parameter :: arr3(5) = [.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.]
logical, parameter :: m1(5) = [.TRUE.,.FALSE.,.TRUE.,.TRUE.,.TRUE.]
integer, parameter :: mm(1) = findloc(arr3,VALUE = .FALSE.,MASK = m1(1:5),BACK = .TRUE.)
if(mm(1) /= 4)print*, 101
print*, "pass"
end 
