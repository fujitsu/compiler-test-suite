type t1
integer :: a
end type t1
type, extends(t1):: t11
integer :: b
end type t11
class(t1), allocatable :: b1
class(t11), allocatable :: b11
type(t1), allocatable :: c1
type(t11), allocatable :: c11
allocate(t11::b1)
deallocate(b1)
if (extends_type_of(b1,b11) .neqv. .false.) print *,'err'
if (extends_type_of(c1,c11) .neqv. .false.) print *,'err1'
select type(z=>b1)
class is(t1)
if (extends_type_of(b1,b11) .neqv. .false.) print *,'err2'
if (extends_type_of(c1,c11) .neqv. .false.) print *,'err3'
class default
print *,'ng'
end select
print *,'pass'
end
