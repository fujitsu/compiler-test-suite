program main
implicit none
integer :: arr(4),jj(2),ll(2)
character :: arr1(5)
real :: arr2(5)
logical :: m1(5)
complex :: arr4(5)
arr = [2,4,6,4]
arr1 = ['A','B','B','C','D']
arr2 = [2.2,3.3,4.4,5.5,4.4]
arr4 = [(2,3),(3,3),(4,4),(2,3),(3,3)]
m1 = [.True.,.FALSE.,.TRUE.,.TRUE.,.FALSE.]
jj(1) = findloc(ARRAY = arr,VALUE = 4,DIM = 1,MASK = m1(1:4),KIND = 8,BACK = .TRUE.)
jj(2) = findloc(ARRAY = arr1,VALUE = 'B',DIM = 1,MASK = m1,KIND = 2,BACK = .TRUE.)
ll(1) = findloc(arr2,4.4,1,m1,4, .TRUE.)
ll(2) = findloc(ARRAY = arr4,VALUE = (3,3),DIM = 1,MASK = m1,KIND = 4,BACK = .TRUE.)
if(jj(1) /= 4)print*, 101
if(kind(findloc(arr,4,1,MASK = m1(1:4),KIND = 8,BACK = .TRUE.)) /= 8)print*,102
if(jj(2) /= 3)print*, 103
if(kind(findloc(arr1,'B',1,MASK = m1,KIND = 2,BACK = .TRUE.))/= 2)print*,104
if(ll(1) /= 3)print*, 105
if(kind(findloc(arr2,4.4,1,MASK = m1,KIND = 4,BACK = .TRUE.)) /= 4)print*,106
if(ll(2) /= 0)print*, 109
if(kind(findloc(arr4,(3,3),1,MASK = m1,KIND = 4,BACK = .TRUE.)) /= 4)print*,110
print*, "pass"
end 
