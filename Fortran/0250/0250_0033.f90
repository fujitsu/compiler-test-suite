Real,parameter :: pp(4,4) = 2,kk(*,*) = pp
if(size(kk) .EQ. size(pp))then
print*,'Pass'
else
print*,'Fail'
endif
end

