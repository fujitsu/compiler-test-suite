type t
integer,pointer::i
end type
class(t),pointer::a
class(t),pointer::b
logical::l
allocate(a)
allocate(b)
allocate(a%i)
allocate(b%i)
a=>b
if(.not.associated(a%i,b%i)) print *,'err1'
select type(z=>a)
class is(t)
if(.not.associated(a%i,b%i)) print *,'err2'
l=.false.
if (associated(a%i) .and. &
     same_type_as(a, b) .and. &
     (loc(a%i)==loc(b%i))) then
    l = .true.
end if
if(.not.l) print *,'err3'

class default
   print *,'ng'
end select
print *,'pass'
end
