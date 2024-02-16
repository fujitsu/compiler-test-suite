integer,parameter::constvar=MERGE_BITS((z'15'+5),16, o'07')
if(constvar .ne. 18)print*,"100"
print*,"PASS"
end

