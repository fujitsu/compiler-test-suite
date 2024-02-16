integer*4,parameter::a=21
integer*4,parameter::b=22
integer*4,parameter::c=15
integer*4,parameter::d=DSHIFTL(a,b,c)
integer*4,parameter::e=DSHIFTR(a,b,c)
if(d .ne. 688128)print*,"100"
if(e .ne. 2752512)print*,"101"
print*,"PASS"
end

