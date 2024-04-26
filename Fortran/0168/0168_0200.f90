module m1
use iso_c_binding
complex(8),parameter,dimension(*)::ca=[(1,2),(3,4),(5,6),(7,8)]
complex(8),parameter,dimension(*)::cr=[(11,2),(12,4),(13,6),(14,8)]
type x
  real:: RE
  real:: IM=3
end type
type(c_ptr):: p1,p2,p3,p4
type (x),target:: x_t(2)
type (x),pointer:: x_p(:)
complex,target::ct(2)=[(0,0) , (0,3) ]
complex,pointer::cp(:)
contains
subroutine s01()
allocate(x_p(2),cp(2))
cp(2)%im=3
p1=c_loc( x_t(2)%im)
p2=c_loc( x_p(2)%im)
p3=c_loc(  ct(2)%im)
p4=c_loc(  cp(2)%im)
call s011(p1,p2,p3,p4)
end subroutine
subroutine s011(p1,p2,p3,p4) bind(c)
type(c_ptr),value:: p1,p2,p3,p4
real   ,pointer:: a1,a2,a3,a4
call c_f_pointer( p1,a1)
call c_f_pointer( p2,a2)
call c_f_pointer( p3,a3)
call c_f_pointer( p4,a4)
if (a1/=3) print *,101,a1
if (a2/=3) print *,102,a2
if (a3/=3) print *,103,a3
if (a4/=3) print *,104,a4
end subroutine
end
use m1
call s01
print *,'pass'
end
