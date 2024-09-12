subroutine s1
integer,allocatable::a(:),b(:)
allocate(a(2:3))
a=[1,2]
allocate(b,source=a)
if (any(lbound(a)/=lbound(b)))print *,101,lbound(a)
if (any(a/=b))print *,102,a,b
if (any(b/=[1,2]))print *,103,a,b
end
call s1
print *,'pass'
end


