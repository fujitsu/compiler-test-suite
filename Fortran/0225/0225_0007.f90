use iso_c_binding 
real :: a(10) 
real(4) ::  l4
real(8) ::  l8
if (c_sizeof(a) /= 40) print *,"a NG"
if (c_sizeof(l4) /= 4) print *,"l4 NG"
if (c_sizeof(l8) /= 8) print *,"l8 NG"
print *,"pass"
end 
