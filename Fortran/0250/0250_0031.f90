character(len = *)::c1
dimension::c1(*,*)
parameter(c1 = reshape(['a','b','c','d','e','f'],[2,3]))

character(len=*),dimension(*,*) :: ch
parameter(ch= c1)

if(size(ch) .eq. size(c1) .and. len(c1) .eq. len(ch)) then
print*,'Pass'
else
print*,'Fail'
endif
end


