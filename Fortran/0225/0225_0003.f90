use iso_c_binding 
integer :: a(10) 
integer(1) ::  l1
integer(2) ::  l2
integer(4) ::  l4
integer(8) ::  l8
if (c_sizeof(a) /= 40) print *,"a NG"
if (c_sizeof(l1) /= 1) print *,"l1 NG"
if (c_sizeof(l2) /= 2) print *,"l2 NG"
if (c_sizeof(l4) /= 4) print *,"l4 NG"
if (c_sizeof(l8) /= 8) print *,"l8 NG"
print *,"pass"
end 
