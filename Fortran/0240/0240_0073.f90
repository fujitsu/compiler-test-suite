use , intrinsic :: iso_c_binding,only:c_loc,c_ptr,c_f_pointer
type(c_ptr) :: cptr
integer,pointer :: x,y
integer,target :: t
t=1
x=>t
cptr=c_loc(x)
call c_f_pointer ( cptr,y)

print *,'pass'
end
