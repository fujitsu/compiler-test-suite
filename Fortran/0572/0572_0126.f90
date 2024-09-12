program main
integer, parameter :: arr(4) = [1,4,8,4]
character, parameter  :: arr1(5) = ['A','B','B','C','D']
real, parameter  :: arr2(5) = [2.2,3.3,4.4,5.5,4.4]
logical, parameter :: m1(5) = [.True.,.FALSE.,.TRUE.,.TRUE.,.FALSE.]
complex, parameter  :: arr4(5) = [(2,3),(3,3),(4,4),(2,3),(3,3)]
integer :: jj = findloc(arr(1:4),arr(4),arr(1),m1(1:4),8,BACK = m1(1))
integer :: kk = findloc(arr1(1:5),arr1(2),arr(1),m1,KIND = 2,BACK = m1(1))
integer :: ll = findloc((arr2(1:5)),arr2(5),arr(1),MASK = m1,KIND = 4,BACK = m1(1))
integer :: nn = findloc(arr4(1:5),VALUE = arr4(2),DIM = arr(1),MASK = m1,KIND = 4,BACK = m1(1))
if(jj /= 4)print*, 101
if(kk /= 3)print*, 103
if(ll /= 3)print*, 105
if(nn/= 0)print*, 109 ,nn
print*, "pass"
end 
