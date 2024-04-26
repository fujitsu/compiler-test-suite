module m1
use iso_c_binding
type x
  real:: RE
  real:: IM=3
end type
type(c_ptr):: p1,p2
type (x),pointer:: x_p(:)
complex,pointer::cp(:)
contains
subroutine s01()
allocate(x_p(2),cp(2))
cp(2)%im=3
p1=c_loc( x_p(2)%im)
p2=c_loc(  cp(2)%im)
call s011(p1,p2)
end subroutine
subroutine s011(p1,p2) bind(c)
type(c_ptr),value:: p1,p2
real   ,pointer:: a1,a2
call c_f_pointer( p1,a1)
call c_f_pointer( p2,a2)
if (a1/=3) print *,101,a1
if (a2/=3) print *,102,a2
end subroutine
end
use m1
call s01
print *,'pass'
end
