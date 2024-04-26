integer,parameter::ii(2)= 4
integer,parameter::arr4(*) = ii(1:size(ii))
if(size(arr4) .EQ. 2)then
print *,'Pass'
else
print *,'Fail'
endif
End

