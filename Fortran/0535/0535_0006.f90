type t
real,pointer::real
end type
class(t),pointer::tt
class(t),pointer::ttt
if(.not.fun(tt,ttt)) print *,'err'
print *,'pass'
contains
logical*1 function fun(a,b) result(l)
class(t),pointer::a,b
allocate(a)
b=>a
l=associated(a,b)
end function
end
