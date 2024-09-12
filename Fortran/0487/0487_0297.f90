character,parameter :: arr1(*,*)= &
  reshape(['A','B','B','C','D','E','G','F','H','B','D','C'],[3,4])
integer,parameter:: kk(*)=&
 findloc(arr1,'B',1)
integer,parameter::k1(*)= findloc( arr1(:,1), 'B')
integer,parameter::k2(*)= findloc( arr1(:,2), 'B')
integer,parameter::k3(*)= findloc( arr1(:,3), 'B')
integer,parameter::k4(*)= findloc( arr1(:,4), 'B')
if(kk(1) /= 2)print*, 105,kk(1)
if(kk(2) /= 0)print*, 106
if(kk(3) /= 0)print*, 107
if(kk(4) /= 1)print*, 108,kk(4)
if(k1 (1)/= 2)print*, 205,kk(1)
if(k2 (1)/= 0)print*, 206
if(k3 (1)/= 0)print*, 207
if(k4 (1)/= 1)print*, 208,kk(4)
print*, "pass"
end 
