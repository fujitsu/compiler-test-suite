type tt
real,allocatable::bbb(:)
end type
type t
class(tt),allocatable::aaa(:)
end type
type(tt),allocatable::bbb(:)
type(t)::ccc
call s(bbb)
print *,'pass'
contains
subroutine s(bbb)
type(tt),allocatable::bbb(:)
allocate(ccc%aaa(1),source=[tt([1.0])])
select type(ccc=>ccc%aaa)
type is(tt        )
bbb=ccc
class default
print *,'ng'
end select
end
end
