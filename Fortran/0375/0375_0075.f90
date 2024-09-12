use,intrinsic :: iso_c_binding ,only:c_loc,c_intptr_t,c_ptr
integer,parameter :: n = 10
integer,target :: ar1(n) = (/1,2,3,4,5,6,7,8,9,10/)
real,target :: ar2(n) = (/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/)
character,target :: ar3(n) = (/'a','b','c','d','e','f','g','h','i','j'/)
type(c_ptr) :: ptr1
type(c_ptr) :: ptr2
type(c_ptr) :: ptr3
ptr1 = c_loc(ar1)
ptr2 = c_loc(ar2)
ptr3 = c_loc(ar3)
print *,'pass'
end
