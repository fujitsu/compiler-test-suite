logical,parameter::constvar=BGT((z'15'+5), o'07')
if(constvar .neqv. .true.)print*,"100"
print*,"PASS"
end
