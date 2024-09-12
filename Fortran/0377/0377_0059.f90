use, intrinsic :: iso_c_binding

type(c_ptr) :: cptr

integer,target :: ii
real,target    :: rr

cptr = c_loc(ii)
cptr = c_loc(rr)

print *,'pass'

end
