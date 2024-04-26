use iso_c_binding 
character :: a(10) 
character(1) ::  l1
character(2) ::  l2
character(4) ::  l4
character(8) ::  l8
if (c_sizeof(a) /= 10) print *,"a NG"
if (c_sizeof(l1) /= 1) print *,"l1 NG"
if (c_sizeof(l2) /= 2) print *,"l2 NG"
if (c_sizeof(l4) /= 4) print *,"l4 NG"
if (c_sizeof(l8) /= 8) print *,"l8 NG"
print *,"pass"
end 
