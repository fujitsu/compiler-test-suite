type t
integer::i
end type
class(t),pointer::a
type(t),target::b
logical::l
allocate(a)
a=>b
if(.not.associated(a,b)) print *,'err1'
l=.false.
if (associated(a) .and. &
     same_type_as(a, b) .and. &
     (loc(a)==loc(b))) then
    l = .true.
end if
if(.not.l) print *,'err2'
select type(z=>a)
class   is(t)
if(.not.associated(a,b)) print *,'err3'
class default
print *,'ng'
end select
print *,'pass'
end
