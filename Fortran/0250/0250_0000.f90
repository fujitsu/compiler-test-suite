Integer,parameter:: a(*) =  [1,2,3,4]
if(a(1) .NE. a(4) .and. a(4) .EQ. size(a)) then
print*,'Pass'
else
print*,'Fail'
end if
end

