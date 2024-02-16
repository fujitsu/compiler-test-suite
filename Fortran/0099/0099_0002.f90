program main
integer,allocatable :: arr(:,:),jj(:),kk(:),ll(:),nn(:)
character,allocatable :: arr1(:,:)
real,allocatable :: arr2(:,:)
complex,allocatable :: arr4(:,:)
allocate(arr(3,4),arr1(3,4),arr2(3,4),arr4(3,4),jj(2),kk(2),ll(2),nn(2))
arr = reshape([0,3,1,-5,4,5,7,-1,6,7,2,7],[3,4])
arr1 = reshape(['A','B','B','C','D','E','G','F','H','B','D','C'],[3,4])
arr2 = reshape([2.2,3.3,4.4,5.5,4.4,3.3,2.2,1.1,6.6,7.7,8.8,9.9],[3,4])
arr4 = reshape([(2,3),(3,3),(4,4),(2,3),(3,3),(2,2),(1,1),(6,3),(2,3),(3,3),(1,1),(7,7)],[3,4])
jj = findloc(arr,4,BACK = .TRUE.)
kk = findloc(arr1,'B',BACK = .TRUE.)
ll = findloc(arr2,4.4,BACK = .TRUE.)
nn = findloc(arr4,(3,3),BACK = .TRUE.)
if(jj(1) /= 2)print*, 101
if(jj(2) /= 2)print*, 102
if(kk(1) /= 1)print*, 103
if(kk(2) /= 4)print*, 104
if(ll(1) /= 2)print*, 105
if(ll(2) /= 2)print*, 106
if(nn(1) /= 1)print*, 109
if(nn(2) /= 4)print*, 110
print*, "pass"
end 
