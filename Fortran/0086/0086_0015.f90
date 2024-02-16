real*4::aaa(2)
aaa=f([2.0,2.0])
if(any(aaa/=[4.0,4.0])) print *,'err'
print *,'pass'
contains
function f(a) result(r)
real(4)::a(2),r(2)
r=a**2
end function f
end

