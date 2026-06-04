module m1
use,intrinsic::iso_c_binding
type(c_ptr),bind(c,name='Name04')::p3(2)
integer::n2=2
end
use m1
interface
 type(c_ptr) function s02(p) bind(c) result(r)
 use,intrinsic::iso_c_binding
 type(c_ptr),value::p
 integer,pointer::fp
 end function
end interface
type(c_ptr)::v1
if (n2/=2)print *,'fail'
v1=s02(p3(2))
if (n2/=2)print *,'fail'
print *,'pass'
end
type(c_ptr) function s02(p) bind(c) result(r)
use,intrinsic::iso_c_binding
use m1
type(c_ptr),value::p
integer,pointer::fp,fpx
if (n2/=2)print *,'fail'
r=p
end function

