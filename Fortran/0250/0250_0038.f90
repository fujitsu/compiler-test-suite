character(len = *),parameter,dimension(4) :: pp =['ab','bc','cd','de'] ,kk(*) = pp 

if(size(kk) .eq. size(kk) .and. len(kk) .eq. 2)then
print*,'Pass'
else
print*,'Fail'
endif
end

