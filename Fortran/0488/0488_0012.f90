module m1
contains
elemental function f(n) result(r)
integer::r
intent(in)::n
integer::a(max(n,1))
a=1
r=sum(a)
end function
end
use m1
integer:: a(3),b(3)
a=[1,2,3]
b= f(a)
if (any(b/=[1,2,3])) print *,101
print *,'pass'
end

