subroutine s1
character(3),allocatable::a(:)
character(3),allocatable::b(:)

allocate(a(2:5))
a(2:5)='123'
allocate(b(5:7))
b(5:7)='abc'
if (any(lbound((b))/=1)) print *,101
if (any(lbound(b)/=5)) print *,102
a=(b)
if (any(lbound(a)/=1))print *,201,lbound(a)
if (any(shape(a)/=3))print *,202
if (a(1)/='abc')print *,203
end
call s1
print *,'pass'
end
