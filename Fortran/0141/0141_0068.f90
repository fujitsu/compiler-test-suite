module m1
use iso_c_binding
contains
subroutine s1
type(c_ptr)::cp
integer,pointer::ap(:)
type x
  integer::x1
  integer::x2
end type
type(x),target:: aa(3)
allocate(ap(3))
ap=[1,2,3]
cp=c_loc(ap)
call s2(cp)
if (any(ap/=[11,12,13])) print *,301,ap
aa%x1=-1
aa%x2=[1,2,3]
end subroutine
subroutine s2(cp)
type(c_ptr)::cp
integer,pointer::ap(:)
call c_f_pointer(cp,ap,[3])
if (any(ap/=[1,2,3])) print *,101,ap
ap=ap+10
end subroutine
end
use m1
call s1
print *,'pass'
end

