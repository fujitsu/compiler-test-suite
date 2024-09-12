module m1
contains
 function   w1(p)
use iso_c_binding
 entry      s1(p) bind(c)
type(c_ptr)::p,w1,s1
type(c_ptr)::x
  x=p
  w1=x
 end function
 function w2(p)
use iso_c_binding
 entry      s2(p) bind(c)
integer    ::p,s2,w2
  x=p
  s2=x
 end function
end
use m1
use iso_c_binding
type(c_ptr)::p,pp
integer,target::t
p=c_loc(t)
i=1
pp=s1(p)
j=s2(i)
print *,'pass'
end
