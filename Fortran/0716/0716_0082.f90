use,intrinsic :: iso_c_binding,only:c_loc,c_ptr
character(kind=1,len=10),target :: cha1_10
character(kind=4,len=1),target :: cha4
character(kind=4,len=10),target :: cha4_10
type(c_ptr) :: cptr
cptr = c_loc(cha1_10)
cptr = c_loc(cha4)
cptr = c_loc(cha4_10)
end
