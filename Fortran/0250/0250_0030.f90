Integer,parameter ::x(1:*) = [ (I, I = 2, 6, 2) ]
real,dimension(*,*) ::rr
Parameter(rr = reshape([(I, I = 2, 8, 2) ] ,[2,2]))

if(x(1) .eq. x(2)/2 .and. size(rr) .eq.  rr(2,1) )then
print*,'Pass'
else
print*,'Fail'
endif
end
