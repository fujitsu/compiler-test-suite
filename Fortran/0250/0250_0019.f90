COMPLEX,parameter::brr(2,2) = 10
COMPLEX,parameter::arr(-2:*,*) = brr  
COMPLEX,parameter::arr1(-5:*,*) = reshape([1.1,2.2,3.3,4.4],shape(brr))

if(size(arr) .EQ. size(arr1))then
print*,'Pass'
else
print*,'Fail'
endif
end

