Real,parameter::ii(2,4)= reshape([10,1,2,3,4,5,6,7],shape(ii))
Real,parameter::arr1(*,2:*) = ii(1:2,2:4)

if(size(arr1) .Eq. 6  .and. ubound(arr1,2) .EQ. 4)then
print*,'Pass'
else
print*,'Fail'
endif
End

