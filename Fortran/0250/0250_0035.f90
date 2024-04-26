Integer,parameter,dimension(2) ::kk(*) = [1,2,3,4] 

if(size(kk) .eq. 4)then
print*,'Pass'
else
print*,'Fail'
endif
end

