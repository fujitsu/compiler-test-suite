Real,dimension(2,2)::rr = reshape([2.2,3.2,4.3,4.5],shape(rr))
Real,parameter,dimension(*)::ar = ubound(rr) 

if(size(ar) .eq. ubound(rr,1))then
print*,'Pass'
else
print*,'Fail'
endif
end
