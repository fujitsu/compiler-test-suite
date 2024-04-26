use ,intrinsic::iso_c_binding
integer,target::t
type(c_ptr)::x,y
if (c_associated(c_loc(t),c_loc(t))) then
else
 print *,1
endif
x=c_loc(t)
if (c_associated(x,x)) then
else
 print *,2
endif
x=c_loc(t)
if (c_associated(x,c_loc(t))) then
else
 print *,3
endif
x=c_loc(t)
y=c_loc(t)
if (c_associated(x,y)) then
else
 print *,4
endif
print *,'pass'
end
