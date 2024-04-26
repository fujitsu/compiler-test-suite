call s0(2,2,2)
call s1(2,2,2)
print *,'pass'
end
subroutine s0(n,nn,nnn)
use,intrinsic :: iso_c_binding
implicit none
integer,intent(in)::n,nn,nnn
type(c_ptr)::cptr
integer(c_int), pointer::x
logical::x1(n),x2(nn),x3(nnn)
x2=.true.
x3=.true.
allocate(x)
cptr =c_loc(x)
x1= x2.and.c_associated(cptr).and.x3
if (.not.x1(1)) print *,101
if (.not.x1(2)) print *,101
end
subroutine s1(n,nn,nnn)
use,intrinsic :: iso_c_binding,aaa=>c_associated
implicit none
integer,intent(in)::n,nn,nnn
type(c_ptr)::cptr
integer(c_int), pointer::x
logical::x1(n),x2(nn),x3(nnn)
x2=.true.
x3=.true.
allocate(x)
cptr =c_loc(x)
x1= x2.and.aaa(cptr).and.x3
if (.not.x1(1)) print *,101
if (.not.x1(2)) print *,101
end
