type t
integer::i
end type
class(t),allocatable::a

allocate(a)
call s1(a)
print *,'pass'
contains
subroutine s1(a)
class(t),target::a
type(t),pointer::b
allocate(b)
b=>a
select type(z=>a)
class  is(t)
if(.not.associated(b,a)) print *,'err1'
class default
print *,'ng'
end select
end subroutine s1
end
