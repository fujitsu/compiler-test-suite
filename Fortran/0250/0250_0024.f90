Character(len = 2),parameter::ch(2,3) = reshape(['a','b','c','d','e','f'],shape(ch))
character::ar(*,*)
parameter(ar = ch)

character(len = *),parameter,dimension(*,*) ::c1 = ch

character(len = *)::c
dimension::c(*,*)
parameter(c = ch)   

if(size(ar) .EQ. size(c1) .and. size(c) .eq. 6 .and. len(c1) .eq. len(c)) then
print*,'Pass'
else
print*,'Fail'
endif
end

