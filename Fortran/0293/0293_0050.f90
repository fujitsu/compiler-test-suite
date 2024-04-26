subroutine s1
integer ::a(3),n=3
character(3) b,bb(3,2)
i3=3
b(1:i3)='x'
b(1:-1)='x'
bb(3,i3-1)(1:i3)='x'
if (b/='x'.or.bb(3,2)/='x')print *,101
b=bb(3,i3-1)(1:i3)
a(3)=1
a(n)=1
a(1:3)=1
a(1:n:1)=1
k=4
a(1:k:4)=1
if (any(a(1:3)/=1))print *,101
end
call s1
print *,'pass'
end
