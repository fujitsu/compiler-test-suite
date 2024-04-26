use iso_c_binding 
complex  :: a(10) 
complex (4) ::  l4
complex (8) ::  l8
if (c_sizeof(a) /= 80) print *,"a NG"
if (c_sizeof(l4) /= 8) print *,"l4 NG"
if (c_sizeof(l8) /=16) print *,"l8 NG"
print *,"pass"
end 
