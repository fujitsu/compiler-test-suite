module m
 type x
   sequence
   integer::x1
 end type
contains
subroutine s(c,t,h)
complex ,value ::c
type(x),value::t
character(1),value:: h
c=(1,2)
t%x1=3
h='a'
end subroutine
end
use m

call s((2,3),x(10),'xx')
print *,'pass'
end
