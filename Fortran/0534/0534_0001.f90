type t
complex::c
end type
type tt
class(t),allocatable::a
end type
type(tt),allocatable::b
allocate(b)
b%a=t(1)
if(b%a%c/=(1.0,0.0)) print *,'err'
print *,'pass'
end
