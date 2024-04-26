use , intrinsic :: iso_c_binding,only:c_loc,c_ptr,c_f_pointer
type(c_ptr) :: cptr
logical,pointer :: x,y
logical,target :: t
logical(1),pointer :: x1,y1
logical(1),target :: t1
logical(2),pointer :: x2,y2
logical(2),target :: t2
t=.FALSE.
x=>t
t1=.FALSE.
x1=>t1
t2=.TRUE.
x2=>t2
cptr=c_loc(x)
cptr=c_loc(x1)
cptr=c_loc(x2)
call c_f_pointer ( cptr,y)
call c_f_pointer ( cptr,y1)
call c_f_pointer ( cptr,y2)

print *,"pass"
end
