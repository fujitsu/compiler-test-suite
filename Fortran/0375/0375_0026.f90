module m1
contains
 function s1(p) bind(c)
use iso_c_binding
type(c_ptr),value::p
type(c_ptr)::x,s1
  x=p
  s1=x
 end function
 function s2(p) bind(c)
use iso_c_binding
integer    ,value::p
integer   s2,x
  x=p
s2=x
 end function
end
use m1
use iso_c_binding
type(c_ptr)::p,r
integer,target::t
p=c_loc(t)
i=1
r=s1(p)
j=s2(i)
print *,'pass'
end
