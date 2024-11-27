use iso_c_binding 
real(16) ::  l16
if (c_sizeof(l16) /= 32) print *,"l16 NG"
print *,"pass"
end 
