integer,parameter::a=shiftl(int(121.3),int(4.21))
integer,parameter::b=shiftr(int(121.3),int(4.21))
if(a .ne. 1936)print*,"100"
if(b .ne. 7)print*,"101"
print*,"PASS"
end
