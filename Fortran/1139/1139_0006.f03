type tt
character(:),allocatable::xxx(:)
end type
type t
class(tt),allocatable::aaa(:)
end type
type(tt),allocatable::bbb(:)
type(t)::ccc
call s(bbb)
if(len(bbb(1)%xxx)/=1) print *,'err'
if(any(bbb(1)%xxx/='1')) print *,'err2'
print *,'sngg167k : pass'
contains
subroutine s(bbb)
type(tt),allocatable::bbb(:)
allocate(ccc%aaa(1),source=[tt(['1'])])
select type(eee=>ccc%aaa)
!type is(character(*))
type is(tt          )
bbb=eee
class default
print *,'ng'
end select
end
end

