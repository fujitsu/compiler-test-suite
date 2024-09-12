type t
character::c
end type
class(t),allocatable::a
allocate(a)
call s1(a)
contains
subroutine s1(a)
class(t),target::a
class(*),pointer::b
logical::f
b => a
f=associated(b, a)
if (.not.f) print *,'err1'
f=.false.
if (associated(b) .and. &
     same_type_as(a, b) .and. &
     (loc(a)==loc(b))) then
    f = .true.
end if
if (.not.f) print *,'err2'

print *,"pass"
end subroutine s1
end
