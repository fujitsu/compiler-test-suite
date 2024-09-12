subroutine s1
character(3),allocatable::a(:)
character(3),allocatable::b(:)
allocate(a(2:4))
a(2:4)='123'
allocate(b(10:20))
b(10:20)='abc'
a=b
if (any(lbound(a)/=10))print *,101
if (any(shape(a)/=11))print *,102
end
subroutine s2
character(3),allocatable::a(:)
character(2),allocatable::b(:)
allocate(a(2:4))
a(2:4)='123'
allocate(b(5:7))
b(5:7)='abc'
a=b
if (any(lbound(a)/=2))print *,201
if (any(shape(a)/=3))print *,202
end
subroutine s3
character(3),allocatable::a
character(2),allocatable::b
allocate(a)
a='123'
allocate(b)
b='abc'
a=b
if (len(a)/=3)print *,301
end
subroutine s4
character(3),allocatable::a(:)
character(3),allocatable::b(:)
allocate(a(2:4))
a(2:4)='123'
allocate(b(5:7))
b(5:7)='abc'
a=b
if (any(lbound(a)/=2))print *,401
if (any(shape(a)/=3))print *,242
end
write(1,*) 'start s1'
call s1
write(1,*) 'start s2'
call s2
write(1,*) 'start s3'
call s3
write(1,*) 'start s4'
call s4
print *,'pass'
end
