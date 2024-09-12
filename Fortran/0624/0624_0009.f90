subroutine s1
character(3),allocatable::a(:)
character(2),allocatable::b(:)
allocate(a(2:4))
a(2:4)='123'
allocate(b(5:7))
b(5:7)='abc'
a=b
if (any(lbound(a)/=2))print *,201,lbound(a)
if (any(shape(a)/=3))print *,202
if (a(2)/='ab')print *,303
deallocate(a,b)
allocate(a(2:5))
a(2:5)='123'
allocate(b(5:7))
b(5:7)='abc'
if (b(5)/='ab')print *,304,b(5)
if (a(2)/='123')print *,305,a(2)
a=b
if (any(lbound(a)/=5))print *,1201,lbound(a)
if (any(shape(a)/=3))print *,1202
if (b(5)/='ab')print *,1304,b(5)
if (a(5)/='ab ')print *,1303,a(5)
deallocate(a,b)
end
call s1
print *,'pass'
end
