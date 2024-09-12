use ieee_arithmetic

integer,parameter :: b=5
real,parameter ::a2=ieee_selected_real_kind (b,b)

real::a1
a1=ieee_selected_real_kind (b,b)

if(a2 /= a1) print*,"101"

print*,"pass"
end
