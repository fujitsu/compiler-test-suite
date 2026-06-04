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
type(x)        ::c2
target::t
allocate(c1)
allocate(c1%p)
allocate(c1%y%p)
allocate(c1%p%p)
allocate(c2%p)
allocate(c2%y%p)
allocate(c2%p%p)
c1%p%p=c_loc(t)
call s2(w(c1%p%p))
c1%y%p=c_loc(t)
call s2(w(c1%y%p))
c1%p%y=c_loc(t)
call s2(w(c1%p%y))
c1%y%y=c_loc(t)
call s2(w(c1%y%y))

c2%p%p=c_loc(t)
call s2(w(c2%p%p))
c2%y%p=c_loc(t)
call s2(w(c2%y%p))
c2%p%y=c_loc(t)
call s2(w(c2%p%y))
c2%y%y=c_loc(t)
call s2(w(c2%y%y))
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
