subroutine s
integer,pointer::x(:)
call s1(x)
contains
subroutine s1(x)
integer,pointer::x(:)
type y
 integer::d
 integer,pointer::x(:)
end type
type (y),pointer:: v
integer,target::t(2)
allocate(v)
allocate (v%x(2))
allocate(x(2))
x=1
v%x=1
x=>t
v%x=>t
x=2
v%x=2
end subroutine
end
call s
print *,'pass'
end
