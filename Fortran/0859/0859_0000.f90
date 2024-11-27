use iso_c_binding 
complex (16) ::  l16
if (c_sizeof(l16) /= 32) print *,"l16 NG"
print *,"pass"
end 
