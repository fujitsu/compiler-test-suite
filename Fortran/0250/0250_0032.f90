integer,parameter :: pp(2,4)=2,kk(*,*)= reshape([1,2,3,4,5,6,7,8],shape(pp))
if(size(kk) .eq. 8 .and. ubound(kk,1) .eq. 2)then
print*,'Pass'
else
print*,'Fail'
endif
end

