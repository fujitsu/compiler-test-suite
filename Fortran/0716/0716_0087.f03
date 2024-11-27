use iso_c_binding
integer,allocatable,target :: i
integer,allocatable,target :: i2(:)
integer,pointer :: ii(:)
logical(kind=2),pointer :: ll(:),lp
logical(kind=2),allocatable,target :: l
logical(kind=2),allocatable,target :: l2(:)
type(c_ptr)::cptr
cptr=c_loc(i2)
cptr=c_loc(i)
cptr=c_loc(l)
cptr=c_loc(lp)
cptr=c_loc(ll)
cptr=c_loc(l2)
cptr=c_loc(ii)
end
