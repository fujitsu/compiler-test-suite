integer,parameter::ii(2,4)= 4
integer,parameter::arr(*,*) = ii

if(size(arr) .EQ. 8 .and. UBOUND(arr,2) .EQ. 4)then
print*,'Pass'
else
print*,'Fail'
endif
End

