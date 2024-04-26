Integer,parameter::a(12:20) =  4

Integer,parameter::arr(*) = shape(a)

if(arr(1) .EQ. 9 .and. size(arr) .Eq. 1) then
print*,'Pass'
else
print*,'Fail'
endif
end
