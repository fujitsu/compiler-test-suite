integer,parameter::a(4)=[4,4,-6,4]
integer,parameter::constvar(1)=findloc(a,value=MERGE_BITS(13,18,22),back=.true.)
if(constvar(1) .ne. 4)print*,"100"
print*,"PASS"
end
