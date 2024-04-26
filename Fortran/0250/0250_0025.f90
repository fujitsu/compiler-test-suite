Character(len = *),parameter,dimension(2,3)::ch = reshape(['a','b','c','d','e','f'],shape(ch))

character(len = *)::c
dimension::c(*,*)
parameter(c  = reshape([ch(1,1),ch(1,2),ch(1,3),ch(2,1)],[2,2]) )

if(size(c) .eq. 4 .and. len(c) .eq. 1)then
print*,'Pass'
else
print*,'Fail'
endif
end

