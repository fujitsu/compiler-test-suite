character(*),parameter :: pp(2,4) =reshape(['ab','bc','cd','de','ef','fg','gh','hi']& 
,shape(pp)) ,kk(*,*) = reshape(pp ,[2,2]) 

if(size(kk) .eq. 4 .and. len(pp) .eq. 2)then
print*,'Pass'
else
print*,'Fail'
endif
end

