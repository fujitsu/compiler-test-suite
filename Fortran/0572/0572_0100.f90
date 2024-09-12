program main
implicit none
integer, parameter :: arr(4) = [2,4,6,4]
character, parameter :: arr1(5) = ['A','B','B','C','D']
real, parameter :: arr2(5) = [2.2,3.3,4.4,5.5,4.4]
logical, parameter :: m1(5) = [.True.,.FALSE.,.TRUE.,.TRUE.,.FALSE.]
complex, parameter :: arr4(5) = [(2,3),(3,3),(4,4),(2,3),(3,3)]
integer , parameter :: pp1=kind(findloc(arr,4,1,MASK = m1(1:4),KIND = 8,BACK =.TRUE.))
integer , parameter :: pp2=kind(findloc(arr1,'B',1,MASK = m1,KIND = 2,BACK =.TRUE.))
integer , parameter :: pp3=kind(findloc(arr2,4.4,1,MASK = m1,KIND = 4,BACK =.TRUE.))
integer , parameter :: pp4=kind(findloc(arr4,(3,3),1,MASK = m1,KIND = 4,BACK = .TRUE.))

integer :: ii(1) = findloc(ARRAY = arr,VALUE = 4,DIM = 1,MASK = m1(1:4),KIND = 8,BACK = .TRUE.)
integer :: jj(1) = findloc(ARRAY = arr1,VALUE = 'B',DIM = 1,MASK = m1,KIND = 2,BACK = .TRUE.)
integer :: ll(1) = findloc(arr2,4.4,1,m1,4, .TRUE.)
integer :: mm(1) = findloc(ARRAY = arr4,VALUE = (3,3),DIM = 1,MASK = m1,KIND = 4,BACK = .TRUE.)
if(ii(1) /= 4)print*, 101
if(pp1 /= 8)print*,102
if(jj(1) /= 3)print*, 103
if(pp2/= 2)print*,104
if(ll(1) /= 3)print*, 105
if(pp3 /= 4)print*,106
if(mm(1) /= 0)print*, 107
if(pp4 /= 4)print*,108
print*, "pass"
end 
