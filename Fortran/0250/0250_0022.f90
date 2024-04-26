Complex*8,parameter::ii(2,3) = reshape([2,4,6,8,10,12],shape(ii))
complex*8::arr
dimension arr(*,*)
parameter(arr = ii)

if(size(arr) .EQ. 6)then
print*,'Pass'
else
print*,'Fail'
endif
end

