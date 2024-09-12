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
logical::l
allocate(b)
b=>a
if(.not.associated(b,a)) print *,'err1'
l=.false.
if (associated(b) .and. &
     same_type_as(b, a) .and. &
     (loc(b)==loc(a))) then
    l = .true.
end if
if(.not.l) print *,'err2'
select type(z=>a)
class is(t)
if(.not.associated(b,a)) print *,'err3'
class default
   print *,'ng'
end select
end subroutine s1
end
