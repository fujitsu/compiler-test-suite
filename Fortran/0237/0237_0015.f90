subroutine s1(i,j)
integer a(i,j),b(i,j),c(i,j)
b=1
c=1
a=b+c
if (any(a/=2))print *,101
end
call s1(3,4)
print *,'pass'
end

