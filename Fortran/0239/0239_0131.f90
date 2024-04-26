subroutine s1
integer a(3)
a=[1,2,3]
k=2
n=2
associate( p=> a(k)+1 )
k=99999
a(n)=p+1
end associate
if (any(a/=[1,4,3])) print *,101
end

call s1
print *,'pass'
end 
