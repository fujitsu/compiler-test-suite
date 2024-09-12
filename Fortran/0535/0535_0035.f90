call s1()
call s2()
print *,'pass'
contains
subroutine s1(a,b)
type t
real::c
end type
class(t),optional,pointer::a
type(t),optional,pointer::b
if(present(a)) then
print *,'err1'
endif
if(present(b)) then
print *,'err2'
endif
end subroutine s1
subroutine s2(a,b)
type t
real::c
end type
class(t),optional,pointer::a(:)
type(t),optional,pointer::b(:)
if(present(a)) then
print *,'err1'
endif
if(present(b)) then
print *,'err2'
endif
end subroutine s2
end
