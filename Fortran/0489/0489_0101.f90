integer kk(4)
character :: arr1(3,4)
arr1 = reshape(['A','B','B','C','D','E','G','F','H','B','D','C'],[3,4])
kk = findloc(arr1,'B',1)
if(kk(1) /= 2)print*, 105,kk(1)
if(kk(2) /= 0)print*, 106
if(kk(3) /= 0)print*, 107
if(kk(4) /= 1)print*, 108,kk(4)
do k=1,4
 write(2,*)k, findloc( arr1(:,k), 'B')
end do
rewind 2
read(2,*) n1,n2
if (any([n1,n2]/=[1,2])) print *,201,n1,n2
read(2,*) n1,n2
if (any([n1,n2]/=[2,0])) print *,202,n1,n2
read(2,*) n1,n2
if (any([n1,n2]/=[3,0])) print *,203,n1,n2
read(2,*) n1,n2
if (any([n1,n2]/=[4,1])) print *,204,n1,n2
print*, "pass"
end 
