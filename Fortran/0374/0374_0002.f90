 use,intrinsic :: iso_c_binding
 implicit none

 real(C_FLOAT), target :: s1(100)
 type(C_PTR)	:: cptr_1

 cptr_1 = c_loc(s1)

print *,'pass'
end
