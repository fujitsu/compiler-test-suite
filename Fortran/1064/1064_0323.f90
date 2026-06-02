subroutine s1
integer,target,allocatable:: a
integer,target,allocatable:: b(:)
allocate (a,b(2:3))
a=2
b=[1,2]
call foo(a,b)
if (a/=22) print *,101
if (any(b/=[21,22])) print *,102
contains
 subroutine foo(a,b)
integer,intent(in),pointer:: a
integer,intent(in),pointer:: b(:)
if (any(lbound(b)/=2)) print *,301
if (a/=2) print *,302
if (any(b/=[1,2])) print *,303
a=a+20
b=b+20
end subroutine
end
call s1
print *,'pass'
end
