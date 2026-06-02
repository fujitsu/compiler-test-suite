use, intrinsic :: iso_c_binding
character(len=2),target::arg1='ab'
integer(c_int),target::arg2=10
type(c_ptr) :: a
a=c_loc(arg1)
do concurrent(i=1:1,c_associated(c_null_ptr))
print *,'err'
end do
do concurrent(i=1:1,c_associated(a))
if(c_sizeof(arg1)/=2) print *,'err1'
enddo
do concurrent(i=1:1,c_associated(c_loc(arg2)))
if(c_sizeof(arg2)/=4) print *,'err2'
if(c_sizeof(c_loc(arg1))/=8) print *,'err3'
enddo
print *,'pass'
end
