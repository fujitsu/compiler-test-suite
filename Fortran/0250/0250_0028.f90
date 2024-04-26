Integer,parameter::arr(0:*,*) = reshape([1,2,3,4],[2,2] )

call sub(arr)

contains 
subroutine sub(dmy)
Integer::dmy(2,*)
if(dmy(2,2) .EQ. 4)then
print*,'Pass'
else
print*,'Fail'
endif
end subroutine
end
