character(len = *),parameter,dimension(4) ::kk(*) = ['ab','bc','cd','de','ef']

if(size(kk) .eq. 5 .and. len(kk) .eq. 2)then
print*,'Pass'
else
print*,'Fail'
endif
end

