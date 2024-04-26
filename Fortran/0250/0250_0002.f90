Integer,parameter::a(2:5) = 4
Integer,parameter::arr(*) = ubound(a)

if(size(arr)  .EQ. 1) then
print*,'Pass'
else
print*,'Fail'
endif
end
