COMPLEX,parameter::brr(4) = 10
COMPLEX,parameter::arr(*) = ubound(brr) 
COMPLEX,parameter::arr1(*) = [1.1,2.2,3.3,4.4]
if(size(arr)*4 .EQ. size(arr1))then
print*,'Pass'
else
print*,'Fail'
endif
end

