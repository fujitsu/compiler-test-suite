Integer,parameter::a(4) = 4
Integer,parameter::arr(*) = a

if(arr(1) .EQ. size(arr)) then
print*,'Pass'
else
print*,'Fail'
endif
end
