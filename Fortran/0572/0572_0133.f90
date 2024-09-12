program main
INTRINSIC :: FINDLOC
integer, parameter :: arr(4)= [2,4,6,4]
        integer :: jj(1) = findloc(arr,4.0,BACK = .TRUE.)
if(jj(1) /= 4)print*, 101
print*, "pass"
end 
