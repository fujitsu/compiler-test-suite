complex,dimension(2,4) :: pp,kk(*,*)
parameter(pp = reshape([1.1,1.2,1.3,1.4,1.5,1.6,1.7,1.8]& 
,shape(pp)) ,kk = reshape(pp ,[2,2]) )

if(size(kk) .eq. 4 .and. size(pp) .eq. 8)then
print*,'Pass'
else
print*,'Fail'
endif
end

