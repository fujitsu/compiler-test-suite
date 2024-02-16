integer,parameter::a(3)=[1,4,8]
integer,parameter::b=1
integer,parameter::c(3)=maskl(kind=b,i=a)
if(c(1).ne.-128)print*,"100"
if(c(2).ne.-16)print*,"101"
if(c(3).ne.-1)print*,"102"
print*,"PASS"
end
