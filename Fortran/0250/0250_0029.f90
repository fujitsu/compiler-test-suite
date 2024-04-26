character(len = *),parameter::ch(*,*) = reshape(['abcd','xyzx','efgh','ijkl'],[2,2])

call sub(ch)

contains 
subroutine sub(dmy)
character(len = *)::dmy(2,*)
if(len(dmy) .EQ. 4 .and. ch(1,2).eq. 'efgh' .and. len(dmy) .eq. len(ch))then
print*,'Pass'
else
print*,'Fail'
endif
end subroutine
end
