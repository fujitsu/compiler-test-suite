type t
complex::c
end type
type tt
class(t),allocatable::a(:)
end type
class(tt),pointer::b
type(tt),pointer::bb
allocate(bb)
allocate(b,mold=bb)
b%a=[fun()]
bb%a=[fun()]
if(any(b%a%c/=bb%a%c)) print *,'err'
print *,'pass'
contains
 function fun() result(res)
   class(t),allocatable::res
   allocate(res)
   res%c = 1
 end function fun
end
