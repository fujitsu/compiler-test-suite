integer,parameter::a=kind(POPCNT(3))
if(a .ne. kind(POPCNT(3)))print*,"100"
print*,"PASS"
end
