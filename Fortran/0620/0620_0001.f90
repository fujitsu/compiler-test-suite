subroutine s1
integer,allocatable,dimension(:):: a
integer,dimension(3:5):: b=2
integer,allocatable,dimension(:):: c
allocate(a(2),c(6:9))
c=3
a=1
a=c
if (any(shape(a)/=4))print *,201
if (any(lbound(a)/=6))print *,202
a=b
if (any(shape(a)/=3))print *,101
if (any(lbound(a)/=3))print *,102
end
call s1
print *,'pass'
end
