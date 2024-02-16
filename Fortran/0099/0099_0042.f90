program main
integer :: mm(1)
logical :: m1(5)
logical :: arr3(5)
arr3 = [.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.]
m1 = [.TRUE.,.FALSE.,.TRUE.,.TRUE.,.TRUE.]
mm = findloc(arr3,VALUE = .FALSE.,MASK = m1(1:5),BACK = .TRUE.)
if(mm(1) /= 4)print*, 101
print*, "pass"
end 
