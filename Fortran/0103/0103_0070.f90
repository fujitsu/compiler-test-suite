integer,parameter::a=maskl(3)
integer::b
b=SHIFTL(7,BIT_SIZE(0)-3) 
if(a.ne.b)print*,"100"
print*,"PASS"
end
