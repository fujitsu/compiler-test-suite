use,intrinsic::iso_c_binding
type c_p
type(c_ptr),pointer::p
type(c_ptr)        ::y
end type
type x
type(c_p),pointer::p
type(c_p)        ::y
integer z(100)
end type
type(x),pointer::c1
type(c_ptr)        ::z
target::t
allocate(c1)
allocate(c1%p)
z=c_loc(t)
call s2(w(z))
c1%p%y=c_loc(t)
call s2(w(c1%p%y))
c1%p%y=z
call s2(w(c1%p%y))
print *,'pass'
contains
subroutine s2(p)
type(c_ptr),value::p
if (.not.c_associated(p,c_loc(t)))print *,'fail'
end subroutine
function w(p) result(r)
type(c_ptr),value::p
type(c_ptr),pointer::r
allocate(r)
r=p
end function 


end
