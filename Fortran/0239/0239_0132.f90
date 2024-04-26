subroutine s1
integer a(3),b(3)
a=[1,2,3]
b=[1,2,3]
associate( p=> a+a )
b=p+1
if (any(ubound(p)/=3))print *,201
end associate
if (any(b/=[1,2,3]*2+1)) print *,101
end

call s1
print *,'pass'
end 
