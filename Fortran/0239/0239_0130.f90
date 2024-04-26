subroutine s1
integer a(3)
a=[1,2,3]
associate( p=> a(2) )
p=p+1
end associate
if (any(a/=[1,3,3])) print *,101
end

call s1
print *,'pass'
end 
