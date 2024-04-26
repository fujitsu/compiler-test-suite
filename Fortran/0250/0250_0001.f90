Integer,parameter::a(2) = 4
Integer,parameter::arr(*) = lbound(a)

if (arr(1) .EQ. size(arr)) then
print*,'Pass'
else
print*,'Fail'
endif
end
