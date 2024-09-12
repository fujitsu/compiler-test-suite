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
b%a=[t(1)]
bb%a=[t(1)]
if(any(b%a%c/=bb%a%c)) print *,'err'
print *,'pass'
end
