Integer,dimension(*)::arr
parameter(arr = [1,2,3,4])
call sub(arr)

contains 
subroutine sub(dmy)
Integer::dmy(*)
if(dmy(4) .eq. dmy(3) + dmy(1))then
print*,'Pass'
else
print*,'Fail'
endif
end subroutine
end
