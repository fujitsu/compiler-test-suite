integer,parameter::a=o'07'
integer,parameter::b=b'101'
integer,parameter::c=z'A'
logical,parameter::constvar=BGE(a,b)
logical,parameter::constvar1=BGE(b,c)
logical,parameter::constvar2=BGE(c,a)
if(constvar .neqv. .TRUE.)print*,'100'
if(constvar1 .neqv. .FALSE.)print*,'101'
if(constvar2 .neqv. .TRUE.)print*,'102'
print*,"PASS"
end


