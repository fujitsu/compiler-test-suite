module m1
use,intrinsic::iso_c_binding,only:c_ptr,c_f_pointer,c_loc
type(c_ptr),bind(c)::p1
integer :: flag
contains
type(c_ptr) function s01(p) bind(c) result(r)
type(c_ptr),value::p
integer,pointer::fp,fpx
call c_f_pointer(p,fp)
if (fp/=100) print *,'ng1'
if ( flag .eq. 1 ) call c_f_pointer(p1,fpx)
if (.not.associated(fp,fpx)) print *,'ng2'
r=p
end function
end
use m1
integer,target::t=100
integer,pointer::fpz
type(c_ptr)::v1
flag=1
p1=c_loc(t)
v1=s01(p1)
call c_f_pointer(v1,fpz)
print *,'pass'
end
subroutine xx
print *,'xx'
end
