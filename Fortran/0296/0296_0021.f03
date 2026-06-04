use iso_c_binding
type(c_ptr),target::arg1
call sss1()
call sss1(c_null_ptr)
call sss1(c_loc(arg1))
call sss2
call sss3
print *,'pass'
contains
subroutine sss1(ipt2)
use iso_c_binding
type(c_ptr)::ipt1
type(c_ptr),optional::ipt2
ipt1=c_null_ptr
if(c_sizeof(x=logical(c_associated(c_ptr_2=ipt2,c_ptr_1=ipt1),1))/=sizeof(logical(c_associated(c_ptr_2=ipt2,c_ptr_1=ipt1),1))) print *,'err'
end subroutine
subroutine sss2
use iso_c_binding
character(len=2, kind=c_char), target :: chr
if(c_sizeof(c_loc(chr))/=sizeof(c_loc(chr))) print *,'err'
end subroutine
subroutine sss3
use iso_c_binding
integer, target,dimension(2,3) :: y
integer,pointer::x(:,:)
type(c_ptr)::ipt
y = 1
ipt = c_loc(y)
call c_f_pointer(ipt,x,(/2,3/))
if(c_sizeof(X=c_loc(y))/=sizeof(c_loc(y))) print *,'err'
if(c_sizeof(x=x)/=sizeof(x)) print *,'err'
end subroutine
end
