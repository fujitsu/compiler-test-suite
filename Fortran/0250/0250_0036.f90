real,parameter,dimension(*) ::kk(2) = [1.1,2.1] 

if(size(kk) .eq. 2)then
print*,'Pass'
else
print*,'Fail'
endif
end

