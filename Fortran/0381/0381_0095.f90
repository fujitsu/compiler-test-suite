module mod
  type,bind(C) :: str
    integer :: iii
  end type
end module
module mod01
use mod
use ,intrinsic::iso_c_binding,only:c_ptr
contains
type(str) function func(arg1) bind(C) result(ret1)
  type(str),value :: arg1
  ret1 = arg1
end function
type(c_ptr) function s01(arg2) bind(c) result(ret2)
  type(c_ptr),value::arg2
  ret2=arg2
end function
integer(8) function s02(arg2) bind(c) result(ret2)
  integer(8),value::arg2
  ret2=arg2
end function
end
use mod01
use ,intrinsic::iso_c_binding,only:c_ptr,c_loc,c_f_pointer
type (c_ptr)::a1,a2
integer,target::z=1
integer,pointer::fp
a1=c_loc(z)
a2=s01(a1)
call c_f_pointer(a2,fp)
if (fp/=1)print *,fp
print *,'pass'
end
